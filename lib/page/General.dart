import 'package:flutter/material.dart';
import 'general_detali_page.dart';

final _textStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

bool ifVisit = false;

// ignore: must_be_immutable
class General extends StatelessWidget {
  List<GeneralClass> generalList = [];

  @override
  Widget build(BuildContext context) {
    // 用一个bool变量标记是否添加过武将, 防止重复添加
    if (ifVisit == false) {
      // 对所有武将的所有信息进行添加
      init();
      ifVisit = true;
    }

    final _phoneWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '武将增强列表',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: generalList
            .map((item) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              GeneralDetailPage(item)),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 6, left: 1),
                    height: 60,
                    child: Row(
                      children: [
                        Image.asset(item.kingdom,
                            width: 60, height: 60, fit: BoxFit.cover),
                        Image.asset(item.tinyImg,
                            width: _phoneWidth * 0.6,
                            height: 60,
                            fit: BoxFit.cover),
                        Expanded(
                          child: Container(
                              child: Column(
                            children: [
                              Text(
                                item.name,
                                textAlign: TextAlign.center,
                                style: _textStyle,
                              ),
                              Text(
                                item.title,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  void init() {
    generalList
      ..add(
        GeneralClass(
          "诸葛亮",
          '卧龙',
          'images/kingdom/shu.png',
          'images/general/generalBar/wolong.png',
          'images/general/wolong.jpg',
          ['八阵', '火计', '看破', '藏拙'],
          [
            '锁定技，若你的装备区里没有防具牌，视为装备着【八卦阵】',
            '你可以将一张红色牌当【火攻】使用',
            '你可以将一张黑色牌当【无懈可击】使用',
            '弃牌阶段开始时 , 若你本回合未使用过锦囊牌 , 你的锦囊牌不计入手牌上限'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "孙策",
          '江东小霸王',
          'images/kingdom/wu.png',
          'images/general/generalBar/sunce.png',
          'images/general/sunce.jpg',
          ['激昂', '魂姿', '制霸', '英魂'],
          [
            '当你使用【决斗】或红色【杀】指定目标后，或成为【决斗】或红色【杀】的目标后，你可以摸一张牌',
            '觉醒技，准备阶段，若你的体力值不大于2，你减1点体力上限，回复1点体力，然后获得“英姿”和“英魂”',
            '主公技 ，其他吴势力角色的出牌阶段限一次，该角色可以与你拼点（若你已觉醒，你可以拒绝此拼点），若其没赢，你可以获得拼点的两张牌',
            '回合开始时，若你已受伤,可以让一名其他角色执行下列两项中的一项：摸X张牌，然后弃一张牌；摸一张牌，然后弃X张牌，这里的X为你已损失的体力值，每回合限一次'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "姜维",
          '龙的衣钵',
          'images/kingdom/shu.png',
          'images/general/generalBar/jiangwei.png',
          'images/general/jiangwei.jpg',
          ['挑衅', '志继'],
          [
            '出牌阶段限一次，你可以选择一名攻击范围内含有你的角色，然后除非该角色对你使用一张【杀】且此【杀】对你造成伤害，否则你弃置其一张牌，然后将此技能修改为“出牌阶段限两次”直到回合结束',
            '觉醒技，准备阶段或结束阶段，若你没有手牌，你回复1点体力或摸两张牌，然后减1点体力上限，获得“观星”'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "邓艾",
          '矫然的壮士',
          'images/kingdom/wei.png',
          'images/general/generalBar/dengai.png',
          'images/general/dengai.jpg',
          ['屯田', '凿险', '急袭'],
          [
            '当你于回合外失去牌后，你可以进行判定，若结果：为红桃，你获得此判定牌；不为红桃，你将判定牌置于你的武将牌上，称为“田”；你计算与其他角色的距离-X（X为“田”的数量）',
            '觉醒技，准备阶段，若“田”的数量大于等于3，你减1点体力上限，然后获得“急袭”',
            '你可以将一张“田”当【顺手牵羊】使用'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "曹丕",
          '霸业的继承者',
          'images/kingdom/wei.png',
          'images/general/generalBar/caopi.png',
          'images/general/caopi.jpg',
          ['行殇', '放逐', '颂威'],
          [
            '当其他角色死亡时，你可以选择一项：1.获得其所有牌；2.回复1点体力。',
            '当你受到伤害后，你可以令一名其他角色选择一项：1.摸X张牌并翻面；2.弃置X张牌并失去1点体力（X为你已损失的体力值）。',
            '主公技，当其他魏势力角色的黑色判定牌生效后，其可以令你摸一张牌。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "庞统",
          '凤雏',
          'images/kingdom/shu.png',
          'images/general/generalBar/pangtong.png',
          'images/general/pangtong.jpg',
          ['连环', '涅槃'],
          [
            '你可以将一张梅花手牌当【铁索连环】使用或重铸；你使用【铁索连环】可以多选择一名角色为目标。',
            '限定技，出牌阶段或当你处于濒死状态时，你可以弃置区域里的所有牌，然后复原你的武将牌，摸三张牌，将体力回复至3点。',
          ],
        ),
      )
      ..add(
        GeneralClass(
          "钟会",
          '桀骜的野心家',
          'images/kingdom/wei.png',
          'images/general/generalBar/zhonghui.png',
          'images/general/zhonghui.jpg',
          ['权计', '自立', '排异'],
          [
            '出牌阶段结束时若手牌数大于体力值,可以将一张手牌置于武将牌上，称为“权”，或当你受到1点伤害后，你可以摸一张牌，然后将一张手牌置于武将牌上，称为“权”；你的手牌上限+X（X为“权”的数量）。',
            '觉醒技，准备阶段，若“权”的数量不小于3，你选择一项：1.回复1点体力；2.摸两张牌。然后减1点体力上限，获得“排异”。',
            '出牌阶段限一次，你可以移去一张“权”，令一名角色摸两张牌。若该角色的手牌比你多，则你对其造成1点伤害。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "赵云",
          '虎威将军',
          'images/kingdom/shu.png',
          'images/general/generalBar/zhaoyun.png',
          'images/general/zhaoyun.jpg',
          ['龙胆', '涯角'],
          [
            '你可以将一张【杀】当【闪】、【闪】当【杀】、【酒】当【桃】、【桃】当【酒】使用或打出。',
            '当你于回合外使用或打出手牌时，你可以展示牌堆顶的一张牌并将其交给一名角色。若这两张牌类别不同，你弃置一张牌。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "徐盛",
          '江东的铁壁',
          'images/kingdom/wu.png',
          'images/general/generalBar/xusheng.png',
          'images/general/xusheng.jpg',
          ['破军'],
          [
            '当你使用【杀】指定一个目标后，你可以将其至多X张牌扣置于该角色的武将牌旁（X为其体力值）；若如此做，当前回合结束后，该角色获得这些牌。你使用【杀】对手牌数与装备数均不大于你的角色造成伤害时，此伤害+1。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "太史慈",
          '笃烈之士',
          'images/kingdom/wu.png',
          'images/general/generalBar/taishici.png',
          'images/general/taishici.jpg',
          ['天义', '酣战'],
          [
            '出牌阶段限一次，你可以与一名角色拼点：若你赢，本回合你可以多使用一张【杀】、使用【杀】无距离限制且可以多选择一个目标；若你没赢，本回合你不能使用【杀】',
            '你与其他角色拼点，或其他角色与你拼点时，你可令其使用随机的手牌拼点。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "颜良文丑",
          '虎狼兄弟',
          'images/kingdom/qun.png',
          'images/general/generalBar/yanliangwenchou.png',
          'images/general/yanliangwenchou.jpg',
          ['双雄'],
          [
            '摸牌阶段，你可以改为展示牌堆顶的两张牌，你获得其中一张牌，然后本回合你可以将与此牌颜色不同的一张手牌当【决斗】使用；当你因“双雄”受到伤害后，你可以获得此次【决斗】中其他角色打出的【杀】。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "张飞",
          '万夫不当',
          'images/kingdom/shu.png',
          'images/general/generalBar/zhangfei.png',
          'images/general/zhangfei.jpg',
          ['咆哮', '替身'],
          [
            '锁定技，你使用【杀】无次数限制。若你于当前回合内使用过【杀】，你于此回合内使用【杀】无距离限制。',
            '限定技，准备阶段，你可以将体力回复至等同于你上回合结束后的体力，然后摸X张牌（X为你以此法回复的体力值）。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "孙权",
          '虎踞江东',
          'images/kingdom/wu.png',
          'images/general/generalBar/sunquan.png',
          'images/general/sunquan.jpg',
          ['制衡', '救援'],
          [
            '出牌阶段限一次，你可以弃置任意张牌，然后摸等量的牌。若你以此法弃置的牌中包括所有手牌，你多摸一张牌。',
            '主公技，其他吴势力角色对其自己使用【桃】时，若其体力值大于你，则该角色可以改为令你回复1点体力，然后其摸一张牌。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "董卓",
          '魔王',
          'images/kingdom/qun.png',
          'images/general/generalBar/dongzhuo.png',
          'images/general/dongzhuo.jpg',
          ['酒池', '肉林', '崩坏', '暴虐'],
          [
            '你可以将一张黑桃手牌当【酒】使用。你使用【酒】无次数限制。你使用受【酒】影响的【杀】造成伤害后，本回合“崩坏”失效。',
            '锁定技，你对女性角色使用的【杀】和女性角色对你使用的【杀】均需使用两张【闪】才能抵消。',
            '锁定技，结束阶段，若你不是体力值最小的角色，你失去1点体力或减1点体力上限。',
            '主公技，当其他群势力角色每造成1点伤害后，其可令你进行判定，若结果为黑桃，你回复1点体力并获得此判定牌。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "曹植",
          '七步绝章',
          'images/kingdom/wei.png',
          'images/general/generalBar/caozhi.png',
          'images/general/caozhi.jpg',
          ['落英', '酒诗', '成章'],
          [
            '当其他角色的一张梅花牌因弃置或判定而置入弃牌堆时，你可以获得之',
            ' 1级，当你需要使用【酒】时，若你的武将牌正面向上，你可以翻面，视为使用一张【酒】。当你受到伤害后，若你的武将牌背面向上，你可以翻面并获得牌堆中的一张随机锦囊牌。\n2级，当你需要使用【酒】时，若你的武将牌正面向上，你可以翻面，视为使用一张【酒】。当你受到伤害后，若你的武将牌背面向上，你可以翻面。当你翻面时，你获得牌堆中的一张随机锦囊牌。',
            '觉醒技，准备阶段，若你造成的伤害与受到的伤害之和累计7点或以上，则你回复1点体力并摸一张牌，然后升级“酒诗”。'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "吕蒙",
          '吴下阿蒙',
          'images/kingdom/wu.png',
          'images/general/generalBar/lvmeng.png',
          'images/general/lvmeng.jpg',
          ['克己', '勤学', '博图', '攻心'],
          [
            '若你未于出牌阶段内使用或打出过【杀】，你可以跳过弃牌阶段。',
            '觉醒技，准备阶段，若你的手牌数比你的体力值多3或更多（若游戏人数不小于7则改为2），你减1点体力上限，然后获得“攻心”。',
            '回合结束后，若你于出牌阶段内使用过四种花色的牌，你可以获得一个额外回合。',
            '出牌阶段限一次，你可以观看一名其他角色的手牌，然后你可以展示其中一张红桃牌，选择一项：1.弃置此牌；2.将此牌置于牌堆顶'
          ],
        ),
      )
      ..add(
        GeneralClass(
          "诸葛恪",
          '蓝田生玉',
          'images/kingdom/wu.png',
          'images/general/generalBar/zhugeke.png',
          'images/general/zhugeke.jpg',
          ['傲才', '黩武'],
          [
            '当你于回合外需要使用或打出基本牌时，若你有/没有手牌，你可以观看牌堆顶的两/四张牌，并且可以使用或打出其中的基本牌。',
            '出牌阶段，你可以选择你攻击范围内的一名其他角色并弃置X张牌（X为该角色的体力值），然后对其造成1点伤害。若其因受到此伤害而进入濒死状态，则当此濒死结算结束后，若其存活，你失去1点体力，此技能于此回合内无效。',
          ],
        ),
      )
      ..add(
        GeneralClass(
          "祝融",
          '飞刀烈火',
          'images/kingdom/shu.png',
          'images/general/generalBar/zhurong.png',
          'images/general/zhurong.jpg',
          ['巨象', '烈刃', '长标'],
          [
            '锁定技，【南蛮入侵】对你无效；当其他角色使用的【南蛮入侵】结算结束后，你获得之。',
            '当你使用【杀】对目标角色造成伤害后，你可以与其拼点，若你赢，你获得其一张牌。',
            '出牌阶段限一次，你可将任意张手牌当无距离限制的【杀】使用。此阶段结束时，若此【杀】对目标角色造成过伤害，你摸等量的牌。'
          ],
        ),
      );
  }
}

class GeneralClass {
  String name; // 名称
  String title; // 称号
  String kingdom; // 所属国家势力
  String tinyImg; // 小图_武将列表用
  String imageURl; // 大图URL
  late List<String> skillName; // 技能名称
  late List<String> skillDescription; // 技能描述 = []

  GeneralClass(
    this.name,
    this.title,
    this.kingdom,
    this.tinyImg,
    this.imageURl,
    this.skillName,
    this.skillDescription,
  );
}
