import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class UserAgreementScreen extends StatelessWidget {
  get id => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '用户协议',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black26),
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Markdown(data: _USER_POLICY),
    );
  }

  static const _USER_POLICY = """
微洁到家与用户共同确认：
1.用户点击微洁到家APP注册页面的同意注册按钮并完成注册程序、获得微洁到家账号和密码时，视为用户与微洁到家已达成《微洁到家用户协议》，就用户通过微洁到家与商家进行家政服务交易达成本协议的全部约定。
2.微洁到家及用户均已认真阅读本《微洁到家用户协议》(下称“本协议”)中全部条款（特别是以黑体字标示出的关于微洁到家及用户重大权益的条款）及微洁到家发布的其他全部服务条款和操作规则的内容，对本协议及前述服务条款和规则均以知晓、理解并接受，同意将其作为确定双方权利义务的依据。微洁到家《法律声明》为本协议的必要组成部分，用户接受本协议的同时即视为接受微洁到家《法律声明》的全部内容。

定义条款
1.1家庭服务：通过互联网渠道，一定数量的消费者组团，以较低价格购买同一种商品/服务的商业活动。
1.2微洁到家：上海四半科技有限公司运营和管理的网络交易平台，域名为www.mikroklean.com, 上海四半科技有限公司通过该网络交易平台为用户和商家提供进行家庭服务交易的网络交易平台服务。本协议下文中，“微洁到家”既指网络交易应用（APP），即上海四半科技有限公司。
1.3用户：接受并同意本协议全部条款及微洁到家发布的其他全部服务条款和操作规则、通过微洁到家进行家庭服务交易的微洁到家注册会员。
1.4商家：通过微洁到家发布家庭服务商品/服务信息、向用户提供家政服务商品/服务的自然人、法人和其他组织。
1.5家政服务交易：用户与商家通过微洁到家进行的交易家庭服务商品/服务的活动。
1.6家庭服务信息：商家通过微洁到家发布的，在微洁到家页面上展示的家庭服务商品/服务信息，包括但不限于家庭服务商品/服务的名称、种类、数量、质量、价格、有效期、预约时间、商家地址、配送方式、退换货方式、退款条件、售后服务等内容。家庭服务信息在法律上构成商家就家庭服务商品/服务向用户发出的要约。
1.7家庭服务价款：用户为购买家庭服务商品/服务而应向商家支付的家庭服务商品/服务的对价，家庭服务价款的数额以用户与商家达成的家庭服务订单中约定的家庭服务价格及家庭服务数量为确定依据。
1.8家庭服务电子消费凭证：由微洁到家以页面、短信、电子邮件或其他方式向用户发送的电子形式的购货凭证或服务单据，用于证明用户已支付家庭服务价款、有权获得所购买的家庭服务商品/服务。


用户注册
2.1.注册资格
用户承诺：用户具有完全民事权利能力和行为能力或虽不具有完全民事权利能力和行为能力但经其法定代理人同意并由其法定代理人代理注册及应用微洁到家服务。
2.2.注册目的
用户承诺：用户进行用户注册并非出于违反法律法规或破坏微洁到家网络家庭服务交易秩序的目的。
2.3.注册流程
1.用户同意根据微洁到家用户注册页面的要求提供有效电子邮箱、所在城市等信息，设置微洁到家账号及密码，用户应确保所提供全部信息的真实性、完整性和准确性。
2.用户在注册时有权选择是否订阅微洁到家发送的关于家庭服务信息的电子邮件和/或短信息。
3.用户合法、完整并有效提供注册所需信息的，有权获得微洁到家账号和密码，微洁到家账号和密码用于用户在微洁到家进行会员登录。
4.用户获得微洁到家账号及密码时视为用户注册成功，用户同意接收微洁到家发送的与微洁到家网站管理、运营相关的电子邮件和/或短消息。
用户服务
微洁到家为用户通过微洁到家进行网络家庭服务交易活动提供网络交易平台服务，目前微洁到家对用户提供的微洁到家网络交易平台服务为免费服务，但微洁到家保留未来对微洁到家网络交易平台服务收取服务费用的权利。
3.1.服务内容
1.用户有权在微洁到家浏览家庭服务商品/服务的家庭服务信息、有权通过微洁到家与商家达成家庭服务订单、支付家庭服务价款、获得家庭服务电子消费凭证（如有）等。
2.用户有权在微洁到家查看其微洁到家会员账号下的信息，有权应用微洁到家提供的功能进行操作。
3.用户有权按照微洁到家发布的活动规则参与微洁到家组织的网站活动。
4.微洁到家承诺为用户提供的其他服务。
3.2.服务规则
用户承诺遵守下列微洁到家服务规则：
1.用户应当遵守法律法规、规章、规范性文件及政策要求的规定，不得在微洁到家或利用微洁到家服务从事非法或其他损害微洁到家或第三方权益的活动，如发送或接收任何违法、违规、违反公序良俗、侵犯他人权益的信息，发送或接收传销材料或存在其他危害的信息或言论，未经微洁到家授权使用或伪造微洁到家电子邮件题头信息等。
2.用户应当遵守法律法规应当妥善使用和保管微洁到家账号及密码，对其微洁到家账号和密码下进行的行为和发生的事件负责。当用户发现微洁到家账号被未经其授权的第三方使用或存在其他账号安全问题时应立即有效通知微洁到家，要求微洁到家暂停该微洁到家账号的服务。微洁到家有权在合理时间内对用户的该等请求采取行动，但对采取行动前用户已经遭受的损失不承担任何责任。用户在未经微洁到家同意的情况下不得将微洁到家账号以赠与、借用、租用、转让或其他方式处分给他人。
3.用户通过微洁到家与商家进行家庭服务交易时，应当遵守本协议“家庭服务交易规则”的全部约定及微洁到家发布的其他关于家庭服务交易的服务条款和操作规则的全部规定。
4.用户在微洁到家对家庭服务商品/服务进行评价时应当根据实际情况如实进行评价。
5.用户应当按照微洁到家发布的规则参加微洁到家抽奖等活动，遵守活动秩序。
6.微洁到家发布的其他服务条款和操作规则。

3.3 用户权益与义务
1. 用户通过微洁到家聘请家政服务人员，有权了解家政服务人员的有关信息，查验相关证件（身份证、技能证明、健康证明等证件）；要求家政服务人员按照微洁到家约定的服务标准提供相应服务。
2. 用户应当按照约定支付相关费用，为家政服务人员提供必要的劳动保护条件。
3. 尊重家政服务人员的人格，如实介绍与家政服务有关的家庭情况。
4. 用户及同住人员患有传染疾病或者具有其他可能危及家政服务人员人身安全的情形，应当如实告知家政服务人员。

用户不得有下列行为：
谩骂、侮辱、虐待、殴打家政服务人员；
强迫家政服务人员提供约定以外的家政服务（包括口头约定）；
强迫家政服务人员提供可能对其人身安全造成损害的家政服务；
用户不得扣押家政服务人员身份证、技能证明、健康证明等证件；
其他违反法律、法规和公序良俗的行为；

家庭服务交易规则
用户承诺在其进入微洁到家消费，通过微洁到家与商家进行家庭服务交易的过程中良好遵守如下微洁到家家庭服务交易规则。
4.1浏览家庭服务信息
用户在微洁到家浏览家庭服务商品/服务的家庭服务信息时，应当仔细阅读家庭服务信息中包含的全部内容，包括但不限于家庭服务商品/服务的名称、种类、数量、质量、价格、有效期、预约时间、商家地址、营业时间、配送方式、退换货方式、退款条件、售后服务等内容，其中用户应特别注意家庭服务商品/服务的有效期、预约时间及退款条件等内容，用户完全接受家庭服务信息中包含的全部内容后方可点击购买。
4.2提交及确认家庭服务订单
•	用户应当仔细阅读家庭服务订单页面中所包含的全部内容，包括但不限于家庭服务信息中的全部内容、为再次提示用户注意而标明的本单家庭服务商品 / 服务的有效期、退款条件等内容（如有），选择及确认购买数量、价格、应付总额、用户接收家庭服务电子消费凭证的联系方式或接收货物的收货地址和送货时间等内容。前述家庭服务订单页面中所包含的全部内容，构成了用户与商家之间达成的家庭服务合同的合同内容，用户完全同意家庭服务订单的全部内容后方可提交订单。
•	用户再次阅读并确认家庭服务订单的全部内容后方可点击确认订单并付款，用户确认订单即视为用户已知晓、同意并接受家庭服务订单中的全部内容，与商家成立了家庭服务合同。家庭服务订单中所包含的全部内容即为家庭服务合同的内容，具体包括但不限于家庭服务商品 / 服务的名称、种类、数量、质量、价格、有效期、预约时间、商家地址、营业时间、配送方式、退换货方式、退款条件、售后服务等，用户与商家均应当按照前述家庭服务合同的约定履行各自的权利义务。
4.3支付家庭服务价款
在家庭服务合同成立之后用户应根据付款页面的提示通过网上支付平台完成家庭服务价款的支付。因微洁到家接受商家委托代商家向用户收取家庭服务价款，故用户将家庭服务价款支付给微洁到家且支付成功即视为用户已向商家履行了家庭服务合同项下的家庭服务价款支付义务。用户在支付家庭服务价款之前无权要求商家向用户提供家庭服务商品/服务。
4.4家庭服务电子消费凭证
1.用户支付家庭服务价款成功后，微洁到家向用户发送家庭服务电子消费凭证，用户可按照家庭服务合同的约定凭家庭服务电子消费凭证向商家主张获得家庭服务商品/服务。
2.用户应当妥善保管家庭服务电子消费凭证，因用户保管不善导致家庭服务电子消费凭证被他人使用的，用户无权要求微洁到家重新发送家庭服务电子消费凭证。
3.对于需要通过家庭服务电子消费凭证验证进行消费的家庭服务商品/服务，用户进行消费时，应向商家出示家庭服务电子消费凭证，商家对家庭服务电子消费凭证验证成功后按照家庭服务合同内容的约定向用户提供家庭服务商品/服务。
4.家庭服务电子消费凭证于发生以下情形之一时即失效：
凭家庭服务电子消费凭证已获得家庭服务商品/服务；
家庭服务合同内容中约定的有效期届满。
4.5.退款规则
用户支付家庭服务价款成功后，需要进行退款的，按照如下规则进行：
4.5.1发生以下情形之一的，用户有权要求微洁到家代商家进行退款：
•	因未达到最低家庭服务人数，造成当次家庭服务活动被取消的；
o	用户付款成功后，因不可抗力或商家原因，导致商家无法向用户提供家庭服务商品 / 服务，经微洁到家核实后属实的；
o	用户付款成功后，因确属情况变化导致商家需要变更家庭服务合同内容，用户不接受变更后内容的。
4.5.2用户已实际消费家庭服务商品/服务的，无权要求商家退款或要求微洁到家代商家进行退款，但家庭服务商品/服务与家庭服务合同约定内容严重不符、存在其他严重质量问题或违反《中华人民共和国食品卫生法》、《餐饮业食品卫生管理办法》、《中华人民共和国消费者权益保护法》的除外。
4.5.3家庭服务合同约定的有效期届满但用户未在有效期内进行消费的，是否及如何退款应根据家庭服务合同的约定确定。根据家庭服务合同的约定用户有权要求退款的，用户应按照家庭服务合同的约定要求微洁到家代商家进行退款，在此种情况下如用户未向微洁到家要求退款的，即视为用户放弃了主张退款的权利，微洁到家有权保留及处理此等款项。
4.5.4用户成功进行家庭服务交易后，未凭家庭服务电子消费凭证进行实际消费且符合微洁到家关于“未消费随时退款”约定的，用户可以向微洁到家申请退款，经微洁到家审核,用户的退款申请符合“未消费随时退款”约定的，微洁到家将于2个工作日内退款至用户的微洁到家账户内。如用户申请将款项退回至用户的支付账户的，即用户申请提现的，则微洁到家将于3-10个工作日内将款项按照用户的支付路径原路退回至用户的支付账户；如用户在30日内申请提现的总金额大于或等于人民币5000元，则属于大额提现，微洁到家针对大额提现将于60日内将款项按照用户的支付路径原路退回至用户的支付账户。
•	已消费的优惠券；
•	实物类产品（需物流运送的产品）；
•	商城抵用券（包括实体商场及电子商城）；
•	因非正常使用及保管而损坏的家庭服务商品；
•	在微洁到家中明确标明 “ 不支持未消费随时退款 ” 的产品或服务；
4.5.5其他情形下的退款按照家庭服务合同内容约定的退款条件及退款方式进行。
4.5.6在退款进行过程中，用户应当遵守微洁到家关于退款的服务条款和操作规则的规定。
4.6家庭服务争议解决规则
如用户与商家因家庭服务合同的履行发生任何争议，包括但不限于对家庭服务商品/服务的数量、质量、价格、有效期、预约时间、商家地址、配送方式、退换货方式、退款条件、售后服务等问题发生争议的，用户应与商家根据家庭服务合同内容的约定确定用户与商家各自的权利义务，承担各自的责任，解决争议。微洁到家可协助用户与商家之间争议的协商调解。

用户的权利和义务
5.1用户有权按照本协议约定接受微洁到家提供的微洁到家网络交易平台服务。
5.2用户有权在注册时选择是否订阅微洁到家发送的关于家庭服务信息的电子邮件或短消息，并在注册成功后有权随时订阅或退订微洁到家该等信息。
5.3如用户要求获得家庭服务商品/服务的发票、其他付款凭证、购货凭证或服务单据，有权且应当在对家庭服务商品/服务进行消费时向商家提出，发票金额以实际支付的家庭服务价款为准。
5.4用户在消费家庭服务商品/服务的过程中，如发现家庭服务商品/服务与订单内容不符或存在质量、服务态度等其他问题的，应与商家采取协商或其他方式予以解决，微洁到家可向用户提供商家的真实网站登记信息并积极协助用户与商家解决争议。
5.5用户有权随时终止使用微洁到家服务。
5.6用户应保证其在注册时和提交订单时所提供的姓名、联系方式、联系地址等全部信息真实、完整、准确，并当上述信息发生变更时及时进行更新提供给微洁到家的信息。
5.7用户在微洁到家进行家庭服务交易时不得恶意干扰家庭服务的正常进行、破坏微洁到家家庭服务秩序。
5.8用户不得以任何技术手段或其他方式干扰微洁到家的正常运行或干扰其他用户对微洁到家服务的使用。
5.9用户不得以虚构事实等方式恶意诋毁微洁到家或商家的商誉。
5.10用户通过微洁到家进行家庭服务交易应出于真实消费目的，不得以转售等商业目的进行家庭服务交易。
5.11用户在付款成功后应配合接收货物或家庭服务电子消费凭证。
5.12用户不得对家庭服务商品/服务进行虚假评价或虚假投诉。

微洁到家的权利和义务
6.1如用户不具备本协议约定的注册资格，则微洁到家有权拒绝用户进行注册，对已注册的用户有权注销其微洁到家会员账号，微洁到家因此而遭受损失的有权向前述用户或其法定代理人主张赔偿。同时，微洁到家保留其他任何情况下决定是否接受用户注册的权利。
6.2微洁到家发现账户使用者并非账户初始注册人时，有权中止该账户的使用。
6.3微洁到家通过技术检测、人工抽检等检测方式合理怀疑用户提供的信息错误、不实、失效或不完整时，有权通知用户更正、更新信息或中止、终止为其提供微洁到家服务。
6.4微洁到家有权在发现微洁到家上显示的任何信息存在明显错误时，对信息予以更正。
6.5用户付款成功前，微洁到家有权接受商家委托对订单内容作出变更，如用户接受变更后的内容则用户可确认订单及付款，如用户不接受变更后内容则有权取消订单。用户付款成功后，如确因情况变化导致商家需对订单内容作出变更的，微洁到家有权接受商家委托单方对订单内容作出变更，如用户接受变更则按变更后的订单内容进行消费，如用户不接受变更则用户有权取消订单并要求微洁到家代商家全额退款。
6.6微洁到家保留随时修改、中止或终止微洁到家服务的权利，微洁到家行使修改或中止服务的权利不需事先告知用户，微洁到家终止微洁到家一项或多项服务的，终止自微洁到家在网站上发布终止公告之日生效。
6.7微洁到家应当采取必要的技术手段和管理措施保障微洁到家的正常运行，并提供必要、可靠的交易环境和交易服务，维护家庭服务交易秩序。
6.8如用户连续一年未使用微洁到家会员账号和密码登录微洁到家，则微洁到家有权注销用户的微洁到家账号。账号注销后，微洁到家有权将相应的会员名开放给其他用户注册使用。
6.9当一次家庭服务活动中家庭服务人数未达到最低家庭服务人数要求时，微洁到家有权取消本次家庭服务活动，并根据本协议约定向已支付相应家庭服务价款的用户进行退款。
6.10微洁到家有权在本协议履行期间及本协议终止后保留用户的注册信息及用户应用微洁到家服务期间的全部交易信息，但不得非法使用该等信息。
6.11微洁到家有权随时删除微洁到家网站内各类不符合国家法律法规、规范性文件或微洁到家网站规定的用户评价等内容信息，微洁到家行使该等权利不需提前通知用户。

特别声明
7.1用户未通过微洁到家与商家之间进行的交易不属于微洁到家家庭服务交易，微洁到家对不属于微洁到家家庭服务交易的交易事项不承担任何责任，用户不得因其与商家之间因此类交易发生的任何争议投诉微洁到家或要求微洁到家承担任何责任。不属于微洁到家家庭服务交易的情况具体包括：用户未在微洁到家与商家成立订单；用户虽在微洁到家与商家成立订单，但未通过微洁到家而直接向商家支付价款。
7.2不论在何种情况下，微洁到家对由于信息网络设备维护、信息网络连接故障、电脑、通讯或其他系统的故障、电力故障、罢工、劳动争议、暴乱、起义、骚乱、生产力或生产资料不足、火灾、洪水、风暴、爆炸、战争、政府行为、司法行政机关的命令、其他不可抗力或第三方的不作为而造成的不能服务或延迟服务不承担责任。
7.3为了用户更加方便和安全的使用微洁到家的服务，微洁到家将使用cookie，收集用户与微洁到家站点有关的特征信息，用于标识用户的设备。同时，微洁到家会积极采取先进的技术手段和有效的管理机制来保障用户的账户安全，保障用户的隐私信息不被任何未授权的使用或者泄露。

知识产权
8.1微洁到家所包含的全部智力成果包括但不限于数据库、网站设计、文字和图表、软件、照片、录像、音乐、声音及其前述组合，软件编译、相关源代码和软件 (包括应用小程序和脚本) 的知识产权权利均归微洁到家所有。用户不得为商业目的复制、更改、拷贝、发送或使用前述任何材料或内容。
8.2微洁到家名称中包含的所有权利 (包括商誉和商标) 均归微洁到家所有。
8.3用户接受本协议即视为用户主动将其在微洁到家发表的任何形式的信息的著作权，包括但不限于：复制权、发行权、出租权、展览权、表演权、放映权、广播权、信息网络传播权、摄制权、改编权、翻译权、汇编权以及应当由著作权人享有的其他可转让权利无偿独家转让给微洁到家所有，微洁到家有权利就任何主体侵权单独提起诉讼并获得全部赔偿。本协议属于《中华人民共和国著作权法》第二十五条规定的书面协议，其效力及于用户在微洁到家发布的任何受著作权法保护的作品内容，无论该内容形成于本协议签订前还是本协议签订后。
8.4用户在使用微洁到家服务过程中不得非法使用或处分微洁到家或他人的知识产权权利。用户不得将已发表于微洁到家的信息以任何形式发布或授权其它网站（及媒体）使用。

客户服务
微洁到家建立专业的客服团队，并建立完善的客户服务制度，从技术、人员和制度上保障用户提问及投诉渠道的畅通，为用户提供及时的疑难解答与投诉反馈。

协议的变更和终止
10.1协议的变更
微洁到家有权随时对本协议内容或微洁到家发布的其他服务条款及操作规则的内容进行变更，变更后立即生效，如用户继续使用微洁到家提供的服务即视为用户同意该等内容变更，如用户不同意变更后的内容则用户有权注销微洁到家账户、停止使用微洁到家服务。
10.2协议的终止
10.2.1微洁到家有权依据本协议约定注销用户的微洁到家账号，本协议于账号注销之日终止。
10.2.2微洁到家有权依据本协议约定终止全部微洁到家服务，本协议于微洁到家全部服务终止之日终止。
10.2.3本协议终止后，用户无权要求微洁到家继续向其提供任何服务或履行任何其他义务，包括但不限于要求微洁到家为用户保留或向用户披露其原微洁到家账号中的任何信息，向用户或第三方转发任何其未曾阅读或发送过的信息等。
10.2.4本协议的终止不影响守约方向违约方追究违约责任。

违约责任
11.1微洁到家或用户违反本协议的约定即构成违约，违约方应当向守约方承担违约责任。
11.2如用户违反本协议约定，以转售等商业目的进行家庭服务交易，则微洁到家有权代商家取消相关家庭服务交易，并有权注销其微洁到家账号，终止为其提供微洁到家服务，如微洁到家因此而遭受损失的，有权要求用户赔偿损失。
11.3如因用户提供的信息不真实、不完整或不准确给微洁到家或商家造成损失的，微洁到家有权要求用户对微洁到家或对商家进行损失的赔偿。
11.4如因用户违反法律法规规定或本协议约定，在微洁到家或利用微洁到家服务从事非法活动的，微洁到家有权立即终止继续对其提供微洁到家服务，注销其账号，并要求其赔偿由此给微洁到家造成的损失。
11.5如用户以技术手段干扰微洁到家的运行或干扰其他用户对微洁到家使用的，微洁到家有权立即注销其微洁到家账号，并有权要求其赔偿由此给微洁到家造成的损失。
11.6如用户以虚构事实等方式恶意诋毁微洁到家或商家的商誉，微洁到家有权要求用户向微洁到家或商家公开道歉，赔偿其给微洁到家或商家造成的损失，并有权终止对其提供微洁到家服务。

争议解决
用户与微洁到家因本协议的履行发生争议的应通过友好协商解决，协商解决不成的，任一方有权将争议提交微洁到家所在地有管辖权的法院进行处理。

协议生效
本协议于用户点击微洁到家注册页面的同意注册并完成注册程序、获得微洁到家账号和密码时生效，对微洁到家和用户均具有约束力。
""";
}