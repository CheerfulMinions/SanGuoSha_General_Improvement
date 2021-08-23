class GeneralClass {
  final String name;  // 名称
  final String title; // 称号
  final String kingdom; // 所属国家势力
  final String tinyImg; // 小图_武将列表用
  final String imageURl;// 大图URL
  final String skillDetail; // 技能描述
  const GeneralClass(this.name , this.title , this.kingdom, this.tinyImg , this.imageURl , this.skillDetail);
}

const List<GeneralClass> generalDataList = [
  const GeneralClass(
    "诸葛亮" , '卧龙' , 'images/kingdom/shu.png',
    'images/general/generalBar/wolong.png',
    // 目前URL的地址使用了会出错
    // 'https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/4ec2d5628535e5ddafd7af9777c6a7efcf1b62fa.jpg' , 
    'images/general/wolong.jpg',
    '八阵：锁定技，若你的装备区里没有防具牌，视为装备着【八卦阵】 \n\n火计：你可以将一张红色牌当【火攻】使用 \n\n看破：你可以将一张黑色牌当【无懈可击】使用'
  ),
  const GeneralClass(
    "孙策" , '江东小霸王' , 'images/kingdom/wu.png',
    'images/general/generalBar/sunce.png',
    // 'https://tse4-mm.cn.bing.net/th/id/OIP-C.9IZwkYTPAiJtWt-Ent-rSQHaKe?pid=ImgDet&rs=1' , 
    'images/general/sunce.jpg',
    '激昂：当你使用【决斗】或红色【杀】指定目标后，或成为【决斗】或红色【杀】的目标后，你可以摸一张牌 \n\n魂姿：觉醒技，准备阶段，若你的体力值不大于2，你减1点体力上限，回复1点体力，然后获得“英姿”和“英魂” \n\n制霸：主公技 ，其他吴势力角色的出牌阶段限一次，该角色可以与你拼点（若你已觉醒，你可以拒绝此拼点），若其没赢，你可以获得拼点的两张牌。'
  ),
  const GeneralClass(
    "姜维" , '龙的衣钵' , 'images/kingdom/shu.png',
    'images/general/generalBar/jiangwei.png',
    // 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_match%2F0%2F11835764006%2F0.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1631114949&t=b1c52d33625ed69031657781e91fd216' , 
    'images/general/jiangwei.jpg',
    '挑衅：出牌阶段限一次，你可以选择一名攻击范围内含有你的角色，然后除非该角色对你使用一张【杀】且此【杀】对你造成伤害，否则你弃置其一张牌，然后将此技能修改为“出牌阶段限两次”直到回合结束 \n\n志继：觉醒技，准备阶段或结束阶段，若你没有手牌，你回复1点体力或摸两张牌，然后减1点体力上限，获得“观星”。'
  ),
  const GeneralClass(
    "邓艾" , '矫然的壮士' , 'images/kingdom/wei.png',
    'images/general/generalBar/dengai.png',
    'images/general/dengai.jpg',
    '屯田：当你于回合外失去牌后，你可以进行判定，若结果：为红桃，你获得此判定牌；不为红桃，你将判定牌置于你的武将牌上，称为“田”；你计算与其他角色的距离-X（X为“田”的数量）\n\n凿险：觉醒技，准备阶段，若“田”的数量大于等于3，你减1点体力上限，然后获得“急袭”。\n\n☆急袭：你可以将一张“田”当【顺手牵羊】使用。'
  ),
  const GeneralClass(
    "曹丕" , '霸业的继承者' , 'images/kingdom/wei.png',
    'images/general/generalBar/caopi.png',
    'images/general/caopi.jpg',
    '行殇：当其他角色死亡时，你可以选择一项：1.获得其所有牌；2.回复1点体力。\n\n放逐：当你受到伤害后，你可以令一名其他角色选择一项：1.摸X张牌并翻面；2.弃置X张牌并失去1点体力（X为你已损失的体力值）。\n\n颂威：主公技，当其他魏势力角色的黑色判定牌生效后，其可以令你摸一张牌。'
  ),
  const GeneralClass(
    "庞统" , '凤雏' , 'images/kingdom/shu.png',
    'images/general/generalBar/pangtong.png',
    'images/general/pangtong.jpg',
    '连环: 你可以将一张梅花手牌当【铁索连环】使用或重铸；你使用【铁索连环】可以多选择一名角色为目标。\n\n涅槃: 限定技，出牌阶段或当你处于濒死状态时，你可以弃置区域里的所有牌，然后复原你的武将牌，摸三张牌，将体力回复至3点。'
  ),
  const GeneralClass(
    "钟会" , '桀骜的野心家' , 'images/kingdom/wei.png',
    'images/general/generalBar/zhonghui.png',
    'images/general/zhonghui.jpg',
    '权计: 出牌阶段结束时若手牌数大于体力值,可以将一张手牌置于武将牌上，称为“权”，或当你受到1点伤害后，你可以摸一张牌，然后将一张手牌置于武将牌上，称为“权”；你的手牌上限+X（X为“权”的数量）。\n\n自立: 觉醒技，准备阶段，若“权”的数量不小于3，你选择一项：1.回复1点体力；2.摸两张牌。然后减1点体力上限，获得“排异”。\n\n☆排异: 出牌阶段限一次，你可以移去一张“权”，令一名角色摸两张牌。若该角色的手牌比你多，则你对其造成1点伤害。'
  ),
  const GeneralClass(
    "赵云" , '虎威将军' , 'images/kingdom/shu.png',
    'images/general/generalBar/zhaoyun.png',
    'images/general/zhaoyun.jpg',
    '龙胆：你可以将一张【杀】当【闪】、【闪】当【杀】、【酒】当【桃】、【桃】当【酒】使用或打出。\n\n涯角：当你于回合外使用或打出手牌时，你可以展示牌堆顶的一张牌并将其交给一名角色。若这两张牌类别不同，你弃置一张牌。 '
  ),
  const GeneralClass(
    "徐盛" , '江东的铁壁' , 'images/kingdom/wu.png',
    'images/general/generalBar/xusheng.png',
    'images/general/xusheng.jpg',
    '破军: 当你使用【杀】指定一个目标后，你可以将其至多X张牌扣置于该角色的武将牌旁（X为其体力值）；若如此做，当前回合结束后，该角色获得这些牌。你使用【杀】对手牌数与装备数均不大于你的角色造成伤害时，此伤害+1。'
  ),
  const GeneralClass(
    "太史慈" , '笃烈之士' , 'images/kingdom/wu.png',
    'images/general/generalBar/taishici.png',
    'images/general/taishici.jpg',
    '天义：出牌阶段限一次，你可以与一名角色拼点：若你赢，本回合你可以多使用一张【杀】、使用【杀】无距离限制且可以多选择一个目标；若你没赢，本回合你不能使用【杀】。\n\n酣战：你与其他角色拼点，或其他角色与你拼点时，你可令其使用随机的手牌拼点。'
  ),
  const GeneralClass(
    "颜良文丑" , '虎狼兄弟' , 'images/kingdom/qun.png',
    'images/general/generalBar/yanliangwenchou.png',
    'images/general/yanliangwenchou.jpg',
    '双雄: 摸牌阶段，你可以改为展示牌堆顶的两张牌，你获得其中一张牌，然后本回合你可以将与此牌颜色不同的一张手牌当【决斗】使用；当你因“双雄”受到伤害后，你可以获得此次【决斗】中其他角色打出的【杀】。'
  ),
  const GeneralClass(
    "张飞" , '万夫不当' , 'images/kingdom/shu.png',
    'images/general/generalBar/zhangfei.png',
    'images/general/zhangfei.jpg',
    '咆哮：锁定技，你使用【杀】无次数限制。若你于当前回合内使用过【杀】，你于此回合内使用【杀】无距离限制。\n\n替身：限定技，准备阶段，你可以将体力回复至等同于你上回合结束后的体力，然后摸X张牌（X为你以此法回复的体力值）。'
  ),
  const GeneralClass(
    "孙权" , '虎踞江东' , 'images/kingdom/wu.png',
    'images/general/generalBar/sunquan.png',
    'images/general/sunquan.jpg',
    '制衡：出牌阶段限一次，你可以弃置任意张牌，然后摸等量的牌。若你以此法弃置的牌中包括所有手牌，你多摸一张牌。\n\n救援：主公技，其他吴势力角色对其自己使用【桃】时，若其体力值大于你，则该角色可以改为令你回复1点体力，然后其摸一张牌。'
  ),
  const GeneralClass(
    "董卓" , '魔王' , 'images/kingdom/qun.png',
    'images/general/generalBar/dongzhuo.png',
    'images/general/dongzhuo.jpg',
    '酒池：你可以将一张黑桃手牌当【酒】使用。你使用【酒】无次数限制。你使用受【酒】影响的【杀】造成伤害后，本回合“崩坏”失效。\n\n肉林：锁定技，你对女性角色使用的【杀】和女性角色对你使用的【杀】均需使用两张【闪】才能抵消。\n\n崩坏：锁定技，结束阶段，若你不是体力值最小的角色，你失去1点体力或减1点体力上限。\n\n暴虐：主公技，当其他群势力角色每造成1点伤害后，其可令你进行判定，若结果为黑桃，你回复1点体力并获得此判定牌。'
  ),
  // const GeneralClass(
  //   "王平" , '兵谋以致用' , 'images/kingdom/shu.png',
  //   'images/general/wangping.jpg',
  //   '行殇：当其他角色死亡时，你可以选择一项：1.获得其所有牌；2.回复1点体力。\n\n放逐：当你受到伤害后，你可以令一名其他角色选择一项：1.摸X张牌并翻面；2.弃置X张牌并失去1点体力（X为你已损失的体力值）。\n\n颂威：主公技，当其他魏势力角色的黑色判定牌生效后，其可以令你摸一张牌。'
  // ),
];