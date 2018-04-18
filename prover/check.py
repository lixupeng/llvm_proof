def check_buffer_overflow(cfg):
    potential_buffer_overflow = []
    for node, events in cfg.check.items():
        for event in events:
            if event[0] == 'buffer_overflow':
                p, dbg_loc = event[1], event[2]
                overflow = False
                if isinstance(cfg.var_info[p][0], tuple) and cfg.var_info[p][0][0] == 'get_ptr':
                    a, n = cfg.var_info[p][0][1], cfg.var_info[p][0][2]
                    if isinstance(cfg.var_info[a][0], tuple) and cfg.var_info[a][0][0] == 'array':
                        size = cfg.var_info[a][0][1]
                        if isinstance(n, str):
                            if cfg.fixpoints[node].sat((-1, n, 0, '', -1)):
                                overflow = True
                            if isinstance(size, str):
                                if cfg.fixpoints[node].sat((1, n, -1, size, 0)):
                                    overflow = True
                            else:
                                if cfg.fixpoints[node].sat((1, n, 0, '', -size)):
                                    overflow = True
                        else:
                            if n < 0:
                                overflow = True
                            if isinstance(size, str):
                                if cfg.fixpoints[node].sat((-1, size, 0, '', n)):
                                    overflow = True
                            else:
                                if n >= size:
                                    overflow = True
                if overflow:
                    potential_buffer_overflow.append((p, dbg_loc))
    return potential_buffer_overflow
