import 'package:myporfolio/model/acadamic_detail.dart';
import 'package:myporfolio/model/exeprience.dart';
import 'package:myporfolio/model/language.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/model/skill.dart';

class MyInfo {
  String title =
      '''I'm Shine Wanna, Flutter Developer from Bangkok, Thailand.''';
  String objective =
      'Coding is my passion, and I am driven to become an accomplished Mobile Software Developer.\nMy strong problem-solving abilities and experience in international programming contests make me a valuable asset.';
  String aboutMe =
      '''I'm a Flutter Developer and develop Android, iOS and Web.''';
  String getInTouch =
      'You have an idea, I am here to turn your dream into real digital solution.';
  AcadamicDetail acadamicDetail = AcadamicDetail(
      name: 'University of Computer Studies Yangon', degree: 'B.C.Sc');
  late List<Experience> exps;
  late List<Project> personalProjects;
  late List<Project> professionalProjects;
  late List<Skill> skills;
  late List<Language> langs;

  MyInfo() {
    _setSkills();
    _setExps();
    _setLangs();
    _setProjects();
  }

  void _setExps() {
    exps = [
      Experience(
        role: 'Mobile Engineer',
        place: 'YPB International Group',
        fromTo: 'Apr 2022 - Present',
        bullets: [
          'International working environment',
          'Develop Unifai, MotifMirco, YPB Tracer apps with Flutter',
          'Develop YPB Camera Plugin in Flutter with Swift',
          'Develop YPB multiple layer custom QR and Green image detector with Python',
          'Migrate OpenCV in Flutter',
          'Agile development',
          'Setting up CI/CD, PlayStore, AppStore, Firebase and GitHub action'
        ],
      ),
      Experience(
        role: 'Senior Flutter Developer',
        place: 'Asaygo Company',
        fromTo: 'Aug 2019 - Apr 2022',
        bullets: [
          'Develop ChoChoLay Zay, ChoChoLay House, ChoChoLay Chat, CMTFDN apps with Flutter',
          'Develop Multiselectable DropDown widget and publish to Flutter pub',
          'Setting up CI/CD, PlayStore, AppStore, OneSignal, Firebase, Map and GitHub action',
        ],
      ),
      Experience(
        role: 'Software Engineer(Internship)',
        place: 'BizLeap Technology',
        fromTo: 'Apr 2019 - July 2019',
        bullets: [
          'Work closely with Senior Developers',
          'Build simple Java project and deploy using Apache',
          'Learn OOP, ORM, MVC, Clean Code',
          'Unit Testing, QA Testing',
          'Write vim scripts',
        ],
      ),
    ];
  }

  void _setSkills() {
    skills = [
      Skill(name: 'Flutter'),
      Skill(name: 'iOS(Swift)'),
      Skill(name: 'Android(Java)'),
      Skill(name: 'Java'),
      Skill(name: 'Dart'),
      Skill(name: 'Python'),
      Skill(name: 'Kaggle'),
      Skill(name: 'OOP'),
      Skill(name: 'Architecture Pattern(MVVM, MVC, MVP)'),
      Skill(name: 'APIs Integration'),
      Skill(name: 'Firebase'),
      Skill(name: 'OneSignal'),
      Skill(name: 'Ads Integration'),
      Skill(name: 'In-app purchase'),
      Skill(name: 'Dependency Injection'),
      Skill(name: 'GitHub'),
      Skill(name: 'GitLab'),
      Skill(name: 'GitHub Actions'),
      Skill(name: 'CodeMagic'),
      Skill(name: 'Automation Testing(Unit, Widget, Integrated)'),
      Skill(name: 'Mock Test'),
      Skill(name: 'Shell Scripting'),
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
      Skill(name: 'OS(Mac, Windows, Linux)'),
      Skill(name: 'AWS(Flutter)'),
      Skill(name: 'HTML'),
      Skill(name: 'CSS'),
      Skill(name: 'C#'),
    ];
  }

  void _setLangs() {
    langs = [
      Language(name: 'Burmese', proficiency: 1.0),
      Language(name: 'English', proficiency: .87),
      Language(name: 'Tamil', proficiency: .87),
    ];
  }

  void _setProjects() {
    professionalProjects = [
      Project(
        name: 'ChoChoLay House',
        description:
            '''This is real estate application. Users can add their properties which they want to sale and rent house, apartment, etc. Users can easily search with Map, messaging each other, disable their own property, search their surrounding sale and rent houses.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947364-fafc648b-71d4-4793-a79e-68b5c96c9d6f.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.asaygo.ads',
        appStore: 'https://apps.apple.com/us/app/chocholay-house/id1494552674',
      ),
      Project(
        name: 'ChoChoLay Chat',
        description:
            '''This is a chatting application like wechat appliction. There's many features, such as Voice call, video call, voice message, friend request and etc. And there's many organization that's you can join, chat and discuss about your business project. Use for social communicating, contant sharing, organization publishing. There's you can add member, add content, update your company detail, the other user will share your app and publish with there community. Business to business helping and managing with this application.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947375-63b32cd7-7b49-471d-b314-5806f52552fd.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.social',
        appStore: 'https://apps.apple.com/us/app/chocholay-chat/id1502347910',
      ),
      Project(
        name: 'ChoChoLay Zay',
        description:
            '''This is a ERP application. This project is to my junior for learning purposes and I'm developing, helping and guiding him to develop a professional application. This app is like OneKyat application, user can upload there items and search property what they want.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947383-8d3cdd7c-2d41-489d-b59d-35245fba07bb.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.zay',
      ),
      Project(
        name: 'CMTFDN',
        description:
            '''Tickets scanner for Social Organization Gathering Event. Entrance ticket holders can attend the event. Event workers will scan with the app to accepting the guests and leave report.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947377-c18f1003-ba57-46e4-99d6-23957f45dba9.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.asaygo.cmtfdn',
        isFitHeight: true,
      ),
    ];

    personalProjects = [
      Project(
        name: 'Share Notification',
        description:
            '''This app has more than 100k+ active users. This app is to share any of installed apps and system apps notifications. Most people use for social media messge sharing (like Messenger, Twitter, Instagram, Tiktok, etc), for business (Banking) and Messaging, Incoming Call and others. Like hacking, you can sniff other notification messages in your device. The app doesn't show login information to user. So, feel free to try it.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132948581-497ba7d2-b283-49f8-9f38-e90c8c8cacfd.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.share.notification',
        url: 'https://shinewanna.github.io/sharenotification/',
      ),
      Project(
        name: 'iTube: Video Downloader',
        description:
            '''iTube is a Video Downloader app. This app has more than 50k+ active users. You can download videos and audios from UTube, Facebook, Instagram, etc..''',
        image:
            'https://user-images.githubusercontent.com/39454969/151582760-2560e441-90db-4f06-a739-b42938110e13.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.tube_downloader',
      ),
      Project(
        name: 'Second Space: Launcher',
        description:
            '''This app has more than 50k+ active users. This app is for who willing hide their apps with second space feature but they don't have and for simple smooth Launcher users. Fast, lightweight and clean launcher for Android phones. Play with Wallpapers, Add Hide Apps, Change Hide App Design, Double Tap to Lock Screen and Try Second Space!!!.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132946754-5e50cf3f-2be4-4bce-83d1-70547d00a163.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.second.space',
      ),
      Project(
        name: 'Debt Notes',
        description:
            '''You can easily serialize to your debts. Most of the people have debts to pay or get. So, I decided to make Debt Notes app, to save our time, to more readable, to more customizable our debt note.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132948578-2ca9cac6-e6b0-4515-8cb4-2ff43d012267.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.debtnotes',
      ),
      Project(
        name: 'Lazy SMS',
        description:
            '''This is SMS scheduling app. Users can schedule their SMS at any time with their desire Sim Card.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947380-c1955f89-14f5-44e2-92a3-ed8129f458fe.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.lazy.message',
      ),
      Project(
        name: 'Text Hider',
        description:
            '''You can encrypt your text like message and you can decrypt from the app. There are five catagories simple Ceasar Cipher's Encryption, Each Key Encryption, Prime Encryption, Perfect Square Encryption, Special Encryption.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947382-1f894bc5-c678-4310-8f74-25f577af7683.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.lazy.hasttext',
      ),
      Project(
        name: 'Annoy Notification',
        description:
            '''It's a virus app. It's to annoy your friends with funny notifications. I recommend not to try it.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132950615-75f3c946-b5b8-4d01-8671-d46c550b3083.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.creepy',
      ),
      Project(
        name: 'Flare Bottom Navigation',
        description:
            '''Custom bottom navigation with animation using flare flutter.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947724-9937d083-9627-4f72-bef1-59ead96310bb.gif',
      ),
      Project(
        name: 'Flare Characters',
        description: '''Characters animation with flare flutter.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947727-199e5fab-1673-44b0-adc2-66a1b6ee4fb3.gif',
        isFitHeight: true,
      ),
      Project(
        name: 'Background SMS',
        description:
            'This is an SMS library for flutter on Pub.dev. You can send SMS from foreground, background, and headless.',
        url: 'https://pub.dev/packages/background_sms',
      ),
      Project(
        name: 'Multiselect Dropdown',
        description: 'This is multiselecting feature for Dropdown widget.',
        url: 'https://pub.dev/packages//multiselect_dropdown',
      ),
      Project(
        name: 'Android AutoStart',
        description:
            '''This is an AutoStart library for flutter. You can request to enable AutoStart with Android AutoStart. Many Developers need to access AutoStart Setting in Flutter including me, but there's no good plugin yet for autostart. So I decided to make AutoStart Plugin for Developers.''',
        url: 'https://pub.dev/packages/android_autostart',
      ),
      Project(
        name: 'Food Order app',
        description:
            '''The food order app is to use for the restaurants. You can order, add new things, remove things.''',
      ),
      Project(
        name: 'PixabayHD app',
        description:
            '''This is HD image downloader app. Users can search and download image from PixabayHD image downloader app.''',
      ),
      Project(
        name: 'My Task app',
        description: 'Use to note something.',
      ),
    ];
  }
}

MyInfo myInfo = MyInfo();
