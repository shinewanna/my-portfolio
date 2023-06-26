import 'package:myporfolio/model/acadamic_detail.dart';
import 'package:myporfolio/model/exeprience.dart';
import 'package:myporfolio/model/language.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/model/skill.dart';

class MyInfo {
  String title =
      '''I'm Shine Wanna, Flutter Developer from Bangkok, Thailand.''';
  String objective =
      'Coding is my passion, and I am driven to become an accomplished Mobile Software Developer.\n\nIn addition to my strong problem-solving abilities and experience, I have also participated in international computer programming contests. In one particular contest, our team achieved significant success by winning the First to Solve problem E. Overall, we secured the 8th position in the final results. With this proven track record, I am confident that you will not regret selecting me as a valuable asset to your team.';
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
          'Develop UnifAI, MotifMirco, YPB Tracer apps with Flutter',
          'Develop YPB Camera Plugin in Flutter with Swift',
          'Develop YPB multiple layer custom QR and Green Image Detector with Python',
          'Migrate OpenCV to use Green Image Detector in Flutter',
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
          'Learn OOP, ORM, MVC and Clean Code',
          'Unit Testing and QA Testing',
          'Write shell scripts',
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
      Skill(name: 'Automation Testing'),
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
        name: 'UnifAI',
        description:
            '''The UnifAI app consists of three core features: MotifiMicro, YPB Tracer, and ProtectCode.

MotifiMicro utilizes a unique method to decrypt images captured from the mobile camera and verifies their authenticity.

YPB Tracer enables the integration of YPB's proprietary Tracer Scanner device with the mobile app. The device is connected via Bluetooth, allowing users to control and utilize the scanner to determine the authenticity of products.

ProtectCode verifies the authenticity of products by scanning special QR codes. These QR codes are designed to prevent deep fakes and fraudulent activities.''',
        image:
            'https://github-production-user-asset-6210df.s3.amazonaws.com/39454969/248655833-f7e005f6-321d-4e62-9fa0-298d74199f10.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.ypbsystems.unify',
        appStore: 'https://apps.apple.com/us/app/unifai/id1659586705',
      ),
      Project(
        name: 'MotifMicro',
        description:
            '''MotifiMicro utilizes a unique method to decrypt images captured from the mobile camera and verifies their authenticity.''',
        image:
            'https://github-production-user-asset-6210df.s3.amazonaws.com/39454969/248656030-bebcb37e-7020-47ec-9ef8-9e6389defd0b.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.ypbsystems.motifmicro',
        appStore: 'https://apps.apple.com/us/app/motifmicro/id1607025052',
      ),
      Project(
        name: 'ChoChoLay House',
        description:
            '''The real estate application allows users to list their properties for sale or rent, including houses, apartments, and more. Users can conveniently search for properties using a map feature, enabling them to find listings in specific locations.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947364-fafc648b-71d4-4793-a79e-68b5c96c9d6f.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.asaygo.ads',
        appStore: 'https://apps.apple.com/us/app/chocholay-house/id1494552674',
      ),
      Project(
        name: 'ChoChoLay Chat',
        description:
            '''The chatting application is similar to WeChat and offers various features such as voice calls, video calls, voice messages, friend requests, and more. It serves as a social communication platform where users can connect with friends, share content, and engage in discussions.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947375-63b32cd7-7b49-471d-b314-5806f52552fd.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.social',
        appStore: 'https://apps.apple.com/us/app/chocholay-chat/id1502347910',
      ),
      Project(
        name: 'ChoChoLay Zay',
        description:
            '''The ERP application I am developing is aimed at providing a learning platform for my junior developer to gain experience and develop a professional application. The app is similar to OneKyat, where users can upload their items for sale and search for properties that meet their requirements.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947383-8d3cdd7c-2d41-489d-b59d-35245fba07bb.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.zay',
      ),
      Project(
        name: 'CMTFDN',
        description:
            '''The application serves as a ticket scanner for a social organization's gathering event. It allows entrance ticket holders to attend the event. Event workers can use the app to scan the tickets, verify their validity, and track attendance. Additionally, the app enables event workers to generate reports regarding the guest attendance.''',
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
            '''This highly popular app boasts an impressive user base of over 100k+ active users. Its primary purpose is to facilitate the sharing of notifications from both installed apps and system apps. Users can conveniently share notifications from various social media platforms such as Messenger, Twitter, Instagram, TikTok, and more. Additionally, the app is commonly used for business-related activities, including banking notifications, messaging, and incoming call notifications.

It is important to note that the app does not display login information to the user, ensuring a secure and privacy-focused experience. Users can freely explore the app's functionality without concerns about their personal information being compromised. This unique feature allows users to explore and interact with various notification messages within their own device, creating a versatile and engaging user experience''',
        image:
            'https://user-images.githubusercontent.com/39454969/132948581-497ba7d2-b283-49f8-9f38-e90c8c8cacfd.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.share.notification',
        url: 'https://shinewanna.github.io/sharenotification/',
      ),
      Project(
        name: 'iTube: Video Downloader',
        description:
            '''iTube is a highly popular Video Downloader app with an extensive user base of over 50k+ active users. The app provides a convenient platform for users to download videos and audios from popular platforms such as YouTube, Facebook, Instagram, and more.''',
        image:
            'https://user-images.githubusercontent.com/39454969/151582760-2560e441-90db-4f06-a739-b42938110e13.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.tube_downloader',
      ),
      Project(
        name: 'Second Space: Launcher',
        description:
            '''With an impressive user base of over 50k+ active users, this app offers a solution for those who want to hide their apps using the "second space" feature. It provides a simple and smooth launcher experience for Android phones, offering speed, lightweight performance, and a clean interface.

Users can personalize their launcher experience by exploring various wallpapers and customizing the design of hidden apps. The app's highlight feature is the ability to hide specific apps, providing users with privacy and the option to keep certain applications discreetly tucked away.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132946754-5e50cf3f-2be4-4bce-83d1-70547d00a163.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.second.space',
      ),
      Project(
        name: 'Debt Notes',
        description:
            '''Introducing Debt Notes, a user-friendly app designed to simplify the process of managing and tracking debts. In today's world, it's common for individuals to have debts to pay or receive, and Debt Notes aims to streamline this process, saving you time and providing a more organized approach.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132948578-2ca9cac6-e6b0-4515-8cb4-2ff43d012267.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.debtnotes',
      ),
      Project(
        name: 'Lazy SMS',
        description:
            '''Introducing our SMS Scheduler app, a convenient tool that allows users to schedule SMS messages to be sent at a specific time using their preferred SIM card.''',
        image:
            'https://user-images.githubusercontent.com/39454969/132947380-c1955f89-14f5-44e2-92a3-ed8129f458fe.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.lazy.message',
      ),
      Project(
        name: 'Text Hider',
        description:
            '''Introducing our Text Encryption app, a powerful tool that allows you to encrypt your text messages and decrypt them within the app. With our app, you can ensure the security and confidentiality of your messages by applying various encryption algorithms.''',
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
            'THaving an SMS library for Flutter can be very useful for developers who want to incorporate SMS functionality into their Flutter applications. Being able to send SMS from the foreground, background, and headless mode provides flexibility and convenience.',
        url: 'https://pub.dev/packages/background_sms',
      ),
      Project(
        name: 'Multiselect Dropdown',
        description:
            'Adding a multiselecting feature to the Dropdown widget in Flutter can greatly enhance the user experience and functionality of your app. With the ability to select multiple options from a dropdown list, users can easily make selections that are relevant to their needs.',
        url: 'https://pub.dev/packages//multiselect_dropdown',
      ),
      Project(
        name: 'Android AutoStart',
        description:
            '''This is an AutoStart library for Flutter. With this library, you can request to enable AutoStart functionality using Android AutoStart. Many developers, including myself, often need to access the AutoStart setting in Flutter. However, there is currently no reliable plugin available for autostart functionality. That's why I took the initiative to create the AutoStart Plugin for Developers.''',
        url: 'https://pub.dev/packages/android_autostart',
      ),
      Project(
        name: 'Food Order app',
        description:
            '''The food order app is to use for the restaurants. CRUD features with Firebase backend.''',
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
