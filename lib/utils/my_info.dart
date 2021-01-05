import 'package:myporfolio/model/exeprience.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/model/skill.dart';

class MyInfo {
  String title = "I'm Shine Wanna, Flutter Developer from Yangon, Myanmar.";
  String objective =
      "Objective Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  String exp =
      "Experientook a galley oftronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  List<Experience> exps;
  List<Project> projects;
  List<Skill> skills;

  MyInfo() {
    _setSkills();
    _setExps();
    _setProjects();
  }

  void _setExps() {
    exps = [
      Experience(
          role: "Software Engineer",
          place: "BizLeap Technology",
          fromTo: "Apr 2019 to July 2019"),
      Experience(
          role: "Software Engineer",
          place: "Asaygo Company",
          fromTo: "Apr 2019 to July 2019"),
    ];
  }

  void _setSkills() {
    skills = [
      Skill(name: 'Java'),
      Skill(name: 'Kotlin'),
      Skill(name: 'Dart'),
      Skill(name: 'Php'),
      Skill(name: 'Java Script'),
      Skill(name: 'Flutter'),
      Skill(name: 'NodeJs'),
      Skill(name: 'Laravel'),
      Skill(name: 'Git'),
    ];
  }

  void _setProjects() {
    projects = [
      Project(
        name: 'Omran',
        description:
            'Developing a strategic plan that can lead the Muslim Ummah towards global competitiveness and can direct the efforts of qualified and skilled youth towards optimal utilization of planning and institutional tools to contribute to the renaissance of their communities and homeland countries.',
        image: 'images/projects/omran.png',
        url: 'https://play.google.com/store/apps/details?id=org.omran.android',
        skills: [
          'Dart',
          'Java',
          'Php',
          'Sql',
          'Flutter',
          'OneSignal',
          'Git',
        ],
      ),
      Project(
        name: 'Topfood',
        description: 'Food delivery app',
        image: 'images/projects/topfood.png',
        url:
            'https://play.google.com/store/apps/details?id=dz.topfood.top_food_client',
        skills: [
          'Dart',
          'Flutter',
          'Git',
        ],
      ),
      Project(
        name: 'Toptaxi',
        description:
            'Toptaxi is a third party transportation service, which is intended to provide cars to its customers through a smart application whenever they request. The use of this application is free',
        image: 'images/projects/toptaxi.png',
        url: 'https://play.google.com/store/apps/details?id=toptaxi.dz',
        skills: [
          'Java',
          'Php',
          'JavaScript',
          'Html',
          'Css',
          'Sql',
          'Firebase',
          'Laravel',
          'OneSignal',
          'Git',
        ],
      ),
      Project(
        name: 'Nataloe',
        description:
            'nataloe شركة جزائرية - إسبانية متخصصة بانتاج مستحضرات شبه صيدلانية للعناية اليومية بالبشرة اعتمادا على خلاصتي الألوفيرا والحلزون والزيوت الأساسية',
        image: 'images/projects/nataloe.png',
        url: 'https://play.google.com/store/apps/details?id=com.nataloe',
        skills: [
          'Kotlin',
          'Php',
          'JavaScript',
          'Html',
          'Css',
          'Sql',
          'Firebase',
          'Laravel',
          'Git',
        ],
      ),
      Project(
        name: 'جداء',
        description:
            'يعتبر تعليم الطفل جدول الضرب من أصعب الأمور بالنسبة للأولياء وممل بالنسبة لطفل، لكن مع التطور التكنولوجي وحب الاطفال للتكنولوجيا أصبح ذلك من أيسر المهام على الأولياء والطفل على حد سواء ؛ تطبيق جداء يعتبر الحل الامثل لتعلم جدول الضرب خطوة بخطوة بطريقة سهلة وممتعة مع أصوات خاصة بالإجابة الصحيحة أوالخاطئة، أيضا التطبيق يعطيك تقييما لمستواك خلال التعلم تقييم لكل الجداول معا وتقييم خاص لكل جدول كما يمكنك التطبيق من إجراء إمتحان مباشر لتحديد المستوى ويقوم بحفظ كل نتائجك مع التقييم والتاريخ وبالتالي يمكنك الرجوع لها في أي وقت للإطلاع عليها وملاحظة مراحل تطورك مع الوقت.',
        image: 'images/projects/juda.png',
        url: 'https://play.google.com/store/apps/details?id=com.ouahiddev.juda',
        skills: [
          'Java',
          'Sql',
          'Git',
        ],
      ),
    ];
  }
}

MyInfo myInfo = MyInfo();
