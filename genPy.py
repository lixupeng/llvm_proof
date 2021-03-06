import prover
import prover.ops
def get(module):
  func = prover.Function("test")
  module.add_function(func)
  func.add_arg(('i32', '%0'))
  func.set_entry("bb_1")

  blk = prover.Block("bb_1")
  func.add_block(blk)
  blk.add_equal('%2', prover.ops.zext('i64',('i32', '%0'),), 'example/example.c:5:5')
  blk.add_equal('%3', prover.ops.alloca('i32*',('i64', '%2'),), 'example/example.c:5:5')
  blk.add_equal('%4', prover.ops.add('i32',('i32', '%0'),('i32', prover.ops.constant_int(2,)),), 'example/example.c:6:13')
  blk.add_equal('%5', prover.ops.zext('i64',('i32', '%4'),), 'example/example.c:6:5')
  blk.add_equal('%6', prover.ops.alloca('i32*',('i64', '%5'),), 'example/example.c:6:5')
  blk.add_equal('%7', prover.ops.load('i32',('i32*', '%3'),), 'example/example.c:8:12')
  blk.add_equal('%8', prover.ops.add('i32',('i32', '%0'),('i32', prover.ops.constant_int(4294967295,)),), 'example/example.c:9:16')
  blk.add_equal('%9', prover.ops.sext('i64',('i32', '%8'),), 'example/example.c:9:12')
  blk.add_equal('%10', prover.ops.get_element_ptr('i32*',('i32*', '%3'),('i64', '%9'),), 'example/example.c:9:12')
  blk.add_equal('%11', prover.ops.load('i32',('i32*', '%10'),), 'example/example.c:9:12')
  blk.add_equal('%12', prover.ops.add('i32',('i32', '%11'),('i32', '%7'),), 'example/example.c:9:9')
  blk.add_equal('%13', prover.ops.sext('i64',('i32', '%0'),), 'example/example.c:10:12')
  blk.add_equal('%14', prover.ops.get_element_ptr('i32*',('i32*', '%3'),('i64', '%13'),), 'example/example.c:10:12')
  blk.add_equal('%15', prover.ops.load('i32',('i32*', '%14'),), 'example/example.c:10:12')
  blk.add_equal('%16', prover.ops.add('i32',('i32', '%12'),('i32', '%15'),), 'example/example.c:10:9')
  blk.add_equal('%17', prover.ops.get_element_ptr('i32*',('i32*', '%6'),('i64', '%13'),), 'example/example.c:11:12')
  blk.add_equal('%18', prover.ops.load('i32',('i32*', '%17'),), 'example/example.c:11:12')
  blk.add_equal('%19', prover.ops.add('i32',('i32', '%16'),('i32', '%18'),), 'example/example.c:11:9')
  blk.add_equal('%20', prover.ops.slt('i1',('i32', '%0'),('i32', prover.ops.constant_int(0,)),), 'example/example.c:14:23')
  func.add_cond_edge('bb_1', '%20', 'bb_24', 'bb_21', 'example/example.c:14:5')

  blk = prover.Block("bb_21")
  func.add_block(blk)
  blk.add_equal('%22', prover.ops.add('i32',('i32', '%0'),('i32', prover.ops.constant_int(1,)),), 'example/example.c:14:5')
  blk.add_equal('%23', prover.ops.zext('i64',('i32', '%22'),), '')
  func.add_edge('bb_21', 'bb_39', 'example/example.c:14:5')

  blk = prover.Block("bb_24")
  func.add_block(blk)
  blk.add_equal('%25', prover.ops.phi('i32',{'bb_1' : '%19','bb_39' : '%47',},), '')
  blk.add_equal('%26', prover.ops.phi('i32',{'bb_1' : prover.ops.constant_int(0,),'bb_39' : '%22',},), '')
  blk.add_equal('%27', prover.ops.sext('i64',('i32', '%26'),), 'example/example.c:20:12')
  blk.add_equal('%28', prover.ops.get_element_ptr('i32*',('i32*', '%6'),('i64', '%27'),), 'example/example.c:20:12')
  blk.add_equal('%29', prover.ops.load('i32',('i32*', '%28'),), 'example/example.c:20:12')
  blk.add_equal('%30', prover.ops.add('i32',('i32', '%29'),('i32', '%25'),), 'example/example.c:20:9')
  blk.add_equal('%31', prover.ops.add('i32',('i32', '%26'),('i32', prover.ops.constant_int(1,)),), 'example/example.c:21:16')
  blk.add_equal('%32', prover.ops.sext('i64',('i32', '%31'),), 'example/example.c:21:12')
  blk.add_equal('%33', prover.ops.get_element_ptr('i32*',('i32*', '%6'),('i64', '%32'),), 'example/example.c:21:12')
  blk.add_equal('%34', prover.ops.load('i32',('i32*', '%33'),), 'example/example.c:21:12')
  blk.add_equal('%35', prover.ops.add('i32',('i32', '%30'),('i32', '%34'),), 'example/example.c:21:9')
  blk.add_equal('%36', prover.ops.sgt('i1',('i32', '%0'),('i32', prover.ops.constant_int(4294967295,)),), 'example/example.c:23:23')
  func.add_cond_edge('bb_24', '%36', 'bb_37', 'bb_67', 'example/example.c:23:5')

  blk = prover.Block("bb_37")
  func.add_block(blk)
  blk.add_equal('%38', prover.ops.sext('i64',('i32', '%0'),), 'example/example.c:23:5')
  func.add_edge('bb_37', 'bb_56', 'example/example.c:23:5')

  blk = prover.Block("bb_39")
  func.add_block(blk)
  blk.add_equal('%40', prover.ops.phi('i64',{'bb_39' : '%48','bb_21' : prover.ops.constant_int(0,),},), '')
  blk.add_equal('%41', prover.ops.phi('i32',{'bb_39' : '%47','bb_21' : '%19',},), '')
  blk.add_equal('%42', prover.ops.get_element_ptr('i32*',('i32*', '%3'),('i64', '%40'),), 'example/example.c:16:9')
  blk.add_equal('%43', prover.ops.load('i32',('i32*', '%42'),), 'example/example.c:16:9')
  blk.add_equal('%44', prover.ops.add('i32',('i32', '%43'),('i32', '%41'),), 'example/example.c:16:6')
  blk.add_equal('%45', prover.ops.get_element_ptr('i32*',('i32*', '%6'),('i64', '%40'),), 'example/example.c:17:9')
  blk.add_equal('%46', prover.ops.load('i32',('i32*', '%45'),), 'example/example.c:17:9')
  blk.add_equal('%47', prover.ops.add('i32',('i32', '%44'),('i32', '%46'),), 'example/example.c:17:6')
  blk.add_equal('%48', prover.ops.add('i64',('i64', '%40'),('i64', prover.ops.constant_int(1,)),), 'example/example.c:14:29')
  blk.add_equal('%49', prover.ops.eq('i1',('i64', '%48'),('i64', '%23'),), 'example/example.c:14:23')
  func.add_cond_edge('bb_39', '%49', 'bb_24', 'bb_39', 'example/example.c:14:5')

  blk = prover.Block("bb_50")
  func.add_block(blk)
  blk.add_equal('%51', prover.ops.slt('i1',('i32', '%0'),('i32', prover.ops.constant_int(0,)),), 'example/example.c:29:23')
  func.add_cond_edge('bb_50', '%51', 'bb_67', 'bb_52', 'example/example.c:29:5')

  blk = prover.Block("bb_52")
  func.add_block(blk)
  blk.add_equal('%53', prover.ops.sext('i64',('i32', '%0'),), 'example/example.c:29:5')
  blk.add_equal('%54', prover.ops.add('i32',('i32', '%0'),('i32', prover.ops.constant_int(1,)),), 'example/example.c:29:5')
  blk.add_equal('%55', prover.ops.zext('i64',('i32', '%54'),), '')
  func.add_edge('bb_52', 'bb_69', 'example/example.c:29:5')

  blk = prover.Block("bb_56")
  func.add_block(blk)
  blk.add_equal('%57', prover.ops.phi('i64',{'bb_37' : '%38','bb_56' : '%65',},), '')
  blk.add_equal('%58', prover.ops.phi('i32',{'bb_37' : '%35','bb_56' : '%64',},), '')
  blk.add_equal('%59', prover.ops.get_element_ptr('i32*',('i32*', '%3'),('i64', '%57'),), 'example/example.c:25:9')
  blk.add_equal('%60', prover.ops.load('i32',('i32*', '%59'),), 'example/example.c:25:9')
  blk.add_equal('%61', prover.ops.add('i32',('i32', '%60'),('i32', '%58'),), 'example/example.c:25:6')
  blk.add_equal('%62', prover.ops.get_element_ptr('i32*',('i32*', '%6'),('i64', '%57'),), 'example/example.c:26:9')
  blk.add_equal('%63', prover.ops.load('i32',('i32*', '%62'),), 'example/example.c:26:9')
  blk.add_equal('%64', prover.ops.add('i32',('i32', '%61'),('i32', '%63'),), 'example/example.c:26:6')
  blk.add_equal('%65', prover.ops.add('i64',('i64', '%57'),('i64', prover.ops.constant_int(18446744073709551615,)),), 'example/example.c:23:29')
  blk.add_equal('%66', prover.ops.sgt('i1',('i64', '%57'),('i64', prover.ops.constant_int(0,)),), 'example/example.c:23:23')
  func.add_cond_edge('bb_56', '%66', 'bb_56', 'bb_50', 'example/example.c:23:5')

  blk = prover.Block("bb_67")
  func.add_block(blk)
  blk.add_equal('%68', prover.ops.phi('i32',{'bb_50' : '%64','bb_24' : '%35','bb_72' : '%86',},), '')
  blk.set_return('%68', 'example/example.c:37:1')

  blk = prover.Block("bb_69")
  func.add_block(blk)
  blk.add_equal('%70', prover.ops.phi('i64',{'bb_72' : '%73','bb_52' : prover.ops.constant_int(0,),},), '')
  blk.add_equal('%71', prover.ops.phi('i32',{'bb_72' : '%86','bb_52' : '%64',},), '')
  func.add_edge('bb_69', 'bb_75', 'example/example.c:30:2')

  blk = prover.Block("bb_72")
  func.add_block(blk)
  blk.add_equal('%73', prover.ops.add('i64',('i64', '%70'),('i64', prover.ops.constant_int(1,)),), 'example/example.c:29:29')
  blk.add_equal('%74', prover.ops.eq('i1',('i64', '%73'),('i64', '%55'),), 'example/example.c:29:23')
  func.add_cond_edge('bb_72', '%74', 'bb_67', 'bb_69', 'example/example.c:29:5')

  blk = prover.Block("bb_75")
  func.add_block(blk)
  blk.add_equal('%76', prover.ops.phi('i64',{'bb_69' : prover.ops.constant_int(0,),'bb_75' : '%87',},), '')
  blk.add_equal('%77', prover.ops.phi('i64',{'bb_69' : '%70','bb_75' : '%88',},), '')
  blk.add_equal('%78', prover.ops.phi('i32',{'bb_69' : '%71','bb_75' : '%86',},), '')
  blk.add_equal('%79', prover.ops.shl('i64',('i64', '%77'),('i64', prover.ops.constant_int(32,)),), 'example/example.c:32:13')
  blk.add_equal('%80', prover.ops.ashr('i64',('i64', '%79'),('i64', prover.ops.constant_int(32,)),), 'example/example.c:32:13')
  blk.add_equal('%81', prover.ops.get_element_ptr('i32*',('i32*', '%3'),('i64', '%80'),), 'example/example.c:32:13')
  blk.add_equal('%82', prover.ops.load('i32',('i32*', '%81'),), 'example/example.c:32:13')
  blk.add_equal('%83', prover.ops.add('i32',('i32', '%82'),('i32', '%78'),), 'example/example.c:32:10')
  blk.add_equal('%84', prover.ops.get_element_ptr('i32*',('i32*', '%6'),('i64', '%80'),), 'example/example.c:33:13')
  blk.add_equal('%85', prover.ops.load('i32',('i32*', '%84'),), 'example/example.c:33:13')
  blk.add_equal('%86', prover.ops.add('i32',('i32', '%83'),('i32', '%85'),), 'example/example.c:33:10')
  blk.add_equal('%87', prover.ops.add('i64',('i64', '%76'),('i64', prover.ops.constant_int(1,)),), 'example/example.c:30:30')
  blk.add_equal('%88', prover.ops.add('i64',('i64', '%87'),('i64', '%70'),), 'example/example.c:30:20')
  blk.add_equal('%89', prover.ops.sgt('i1',('i64', '%88'),('i64', '%53'),), 'example/example.c:30:24')
  func.add_cond_edge('bb_75', '%89', 'bb_72', 'bb_75', 'example/example.c:30:2')


