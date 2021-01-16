import 'package:myporfolio/model/acadamic_detail.dart';
import 'package:myporfolio/model/exeprience.dart';
import 'package:myporfolio/model/language.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/model/skill.dart';

class MyInfo {
  String title = "I'm Shine Wanna, Flutter Developer from Yangon, Myanmar.";
  String objective =
      "My advanced UI/UX, Animation, Error Handling, Readable and Maintainable coding skills can be utilized for making a quality product for customer satisfaction.My critical thinking and problem solving skills will amaze you.I was also participant of International Computer Programming Contest and we won First to Solve problem E and our position was 8 in final result.The sure one I can say, you must not regret about your selection.";
  String exp =
      "My journey is start from my second year of my university.I have learned Java from my university when second year and I love to play with Java.Then, I decided to change my path that's Java to Native Android with Java.In third year, I was learn and excute some projects with Native Android.Then, I started doing Flutter till now.I have 1 year experience on Native Android with Java and 2.5 to 3 years experience with Flutter.";
  String aboutMe =
      "I have 1 year experience on Native Android with Java and 2.5 to 3 years experience with Flutter.";
  String getInTouch =
      "You have an idea, I am here to turn your dream into real digital solution.";
  AcadamicDetail acadamicDetail = AcadamicDetail(
      name: "University of Computer Studies Yangon", degree: "B.C.Sc");
  List<Experience> exps;
  List<Project> projects;
  List<Skill> skills;
  List<Language> langs;

  MyInfo() {
    _setSkills();
    _setExps();
    _setLangs();
    _setProjects();
  }

  void _setExps() {
    exps = [
      Experience(
          role: "Software Engineer",
          place: "BizLeap Technology",
          fromTo: "Apr 2019 to July 2019"),
      Experience(
          role: "Flutter Developer",
          place: "Asaygo Company",
          fromTo: "Aug 2019 - Till Date"),
    ];
  }

  void _setSkills() {
    skills = [
      Skill(name: 'Flutter'),
      Skill(name: 'Android'),
      Skill(name: 'Java'),
      Skill(name: 'Dart'),
      Skill(name: 'Git'),
      Skill(name: 'Firebase'),
      Skill(name: 'OneSignal'),
      Skill(name: 'CodeMagic'),
      Skill(name: 'Photoshop'),
      Skill(name: 'Adobe XD'),
      Skill(name: 'Flare'),
      Skill(name: 'MySql'),
      Skill(name: 'Agora'),
      Skill(name: 'Sentry'),
      Skill(name: 'Final Cut Pro'),
      Skill(name: 'WordPress'),
      Skill(name: 'Snappa'),
      Skill(name: 'Appure'),
      Skill(name: 'Adobe XD'),
      Skill(name: 'OS(Mac, Windows, Linux)'),
      Skill(name: 'AWS(learning)'),
    ];
  }

  void _setLangs() {
    langs = [
      Language(name: "Burmese", proficiency: 1.0),
      Language(name: "English", proficiency: .7),
      Language(name: "Tamil", proficiency: .9),
    ];
  }

  void _setProjects() {
    projects = [
      Project(
        name: 'ChoChoLay House',
        description:
            '''First of all,before reading the description,please use the application for User Experience. This is a ERP application. 
            1.User can add which they want to sale and rent house,apartment,etc. 
            2.User can easily search with Map. 
            3.User can messaging each other. 
            4.User can disable their own property. 
            5.User can search their surrounding sale and rent houses
            ''',
        image: 'asset/projects/house.jpg',
        playStore:
            'https://play.google.com/store/apps/details?id=com.asaygo.ads',
        appStore: 'https://apps.apple.com/us/app/chocholay-house/id1494552674',
      ),
      Project(
        name: 'ChoChoLay Zay',
        description:
            '''This is a ERP application.This project is to my junior for learning purposes and I'm developing,
helping and guiding him to develop a professional application.This app is like OneKyat application,
user can upload there items and search property what they want.''',
        image: 'asset/projects/zay.jpg',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.zay',
      ),
      Project(
        name: 'ChoChoLay Chat',
        description:
            '''This is a chatting application like wechat appliction.There's many features.Voice call,video call,voice message,friend request and etc.And there's many organization that's you can join, chat and discuss about your business project.Use for social communicating, contant sharing, organization publishing.There's you can add member, add content, update your company detail, the other user will share your app and publish with there community.Business to business helping and managing with this application.''',
        image: 'asset/projects/chat.jpg',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.social',
        appStore: 'https://apps.apple.com/us/app/chocholay-chat/id1502347910',
      ),
      Project(
        name: 'Lazy SMS',
        description:
            '''This is SMS scheduling app.Users can schedule their SMS at any time with their desire Sim Card.''',
        image: 'asset/projects/lazy_sms.jpg',
        playStore:
            'https://play.google.com/store/apps/details?id=com.lazy.message',
      ),
      Project(
        name: 'Text Hider',
        description:
            '''You can encrypt your text like message and you can decrypt from the
app.There are five catagories simple Ceasar Cipher's Encryption,Each Key Encryption,Prime
Encryption,Perfect Square Encryption,Special Encryption.''',
        image: 'asset/projects/text_hider.jpg',
        playStore:
            'https://play.google.com/store/apps/details?id=com.lazy.hasttext',
      ),
      Project(
        name: 'CMTFDN',
        description:
            '''Tickets scanner for Social Organization Gathering Event.Entrance ticket holders can attend the
event.Event workers will scan with the app to accepting the guests and leave report.
''',
        image: 'asset/projects/cmtfdn.jpg',
        playStore:
            'https://play.google.com/store/apps/details?id=com.asaygo.cmtfdn',
        isFitHeight: true,
      ),
      Project(
        name: 'Flare Bottom Navigation',
        description:
            '''Custom bottom navigation with animation using flare flutter.''',
        image: 'asset/projects/flare_bottom_navigation.gif',
      ),
      Project(
        name: 'Flare Characters',
        description: '''Characters animation with flare flutter.''',
        image: 'asset/projects/flare_character.gif',
        isFitHeight: true,
      ),
      Project(
        name: 'PixabayHD app',
        description:
            '''This is HD image downloader app.Users can search and download image from PixabayHD image downloader app.''',
      ),
      Project(
        name: 'Food Order app',
        description:
            '''The food order app is to use for the restaurants.You can order,add new
things,remove things.
''',
      ),
      Project(
        name: 'My Task app',
        description: 'Use to note something.',
      ),
      Project(
        name: 'Background SMS',
        description:
            'This is an SMS library for flutter on Pub.dev.You can send SMS from foreground, background, and headless.',
        url: 'https://pub.dev/packages/background_sms',
      ),
      Project(
        name: 'Multiselectable Dropdown',
        description: 'This is multiselecting feature for Dropdown widget.',
        url: 'https://pub.dev/packages/multiselectable_dropdown',
      ),
      Project(
        name: 'Android AutoStart',
        description:
            '''This is an AutoStart library for flutter.You can request to enable AutoStart with Android AutoStart.Many Developers need to access AutoStart Setting in Flutter including me, but there's no good plugin yet for autostart.So I decided to make AutoStart Plugin for Developers.''',
        url: 'https://pub.dev/packages/android_autostart',
      ),
    ];
  }
}

MyInfo myInfo = MyInfo();
