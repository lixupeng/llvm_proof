def is_valid(fixpoint, valid_ranges, ptr, end=None):
    valid = False
    if isinstance(ptr, str):
        ptr = [(1, ptr)]
    else:
        base, idx = ptr[0], ptr[1]
        ptr = [(1, base), (1, idx)]

    if end is None:
        end = ptr + [(1, 1)]
    else:
        if isinstance(end, str):
            end = [(1, end)]
        else:
            base, idx = end[0], end[1]
            end = [(1, base), (1, idx)]

    for range in valid_ranges:
        if len(range) == 1:
            valid_ptr = range[0]
            if not fixpoint.sat(ptr + [(-1, valid_ptr)], 'gt') and \
                    not fixpoint.sat(end + [(-1, valid_ptr)], 'le'):
                valid = True
                break
        else:
            valid_begin = range[0]
            if isinstance(range[1], str):
                valid_end = range[1]
                if not fixpoint.sat(ptr + [(-1, valid_end)], 'ge') and \
                        not fixpoint.sat(end + [(-1, valid_begin)], 'le'):
                    valid = True
                    break
            else:
                valid_length = range[1][1]
                if not fixpoint.sat(ptr + [(-1, valid_begin), (-1, valid_length)], 'ge') and \
                        not fixpoint.sat(end + [(-1, valid_begin)], 'le'):
                    valid = True
                    break
    return valid

def check_buffer_overflow(cfg):
    potential_buffer_overflow = []
    for node, events in cfg.check.items():
        for event in events:
            if event[0] == 'buffer_overflow':
                task, dbg_loc = event[1], event[2]
                overflow = False
                if len(task) == 2:
                    ptr = task[1]
                    if not is_valid(cfg.fixpoints[node], cfg.valid_range, ptr):
                        overflow = True
                    if isinstance(ptr, tuple):
                        base = ptr[0]
                        if cfg.fixpoints[node].sat([(1, base)], 'eq'):
                            overflow = True
                    else:
                        if cfg.fixpoints[node].sat([(1, ptr)], 'eq'):
                            overflow = True
                else:
                    begin = task[1]
                    end = task[2]
                    if cfg.fixpoints[node].sat([(1, begin), (-1, end)], 'gt'):
                        overflow = True
                    if cfg.fixpoints[node].sat([(1, begin)], 'eq'):
                        overflow = True
                    if not is_valid(cfg.fixpoints[node], cfg.valid_range, begin, end):
                        overflow = True
                if overflow:
                    potential_buffer_overflow.append((task, dbg_loc))
    return potential_buffer_overflow
