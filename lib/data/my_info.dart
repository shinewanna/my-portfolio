import 'package:myporfolio/model/acadamic_detail.dart';
import 'package:myporfolio/model/exeprience.dart';
import 'package:myporfolio/model/language.dart';
import 'package:myporfolio/model/project.dart';
import 'package:myporfolio/model/skill.dart';

class MyInfo {
  String title = '''I'm Shine Wanna, Mobile Engineer from Bangkok, Thailand.''';
  String objective =
      'I am a passionate Mobile Developer with 5 years of experience in mobile development, specializing in building high-performance, user-centric applications. Coding is my passion, and I am continuously driven to improve my skills and contribute to impactful projects.';
  String aboutMe =
      '''I'm a Mobile Engineer and develop Android, iOS and Web.''';
  String getInTouch =
      'You have an idea, I am here to turn your dream into real digital solution.';
  AcadamicDetail acadamicDetail = AcadamicDetail(
      name: 'University of Computer Studies, Yangon', degree: 'B.C.Sc');
  late List<Experience> exps;
  late List<Project> personalProjects;
  late List<Project> professionalProjects;
  late List<Skill> mobileFrameworks;
  late List<Skill> otherPlatforms;
  late List<Skill> databases;
  late List<Skill> versionControl;
  late List<Skill> ciCd;
  late List<Skill> testing;
  late List<Skill> cloudServices;

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
        fromTo: 'Apr 2022 - Jun 2024',
        bullets: [
          'Developed and optimized internal mobile applications like UnifAI and MotifMicro, incorporating custom camera SDKs using native Kotlin and Swift.',
          'After developing a custom camera SDK, significantly increased the detection accuracy of product authenticity and improved the custom image detection algorithm by over 20%.',
          'Implemented custom image detection algorithm with Python to enhance the quality of old detection which is used in MotifMicro app.',
          'Streamlined the app development process by setting up CI/CD pipelines, reducing manual intervention and ensuring faster and error-free releases across Play Store, App Store, and Firebase.',
        ],
      ),
      Experience(
        role: 'Senior Flutter Developer',
        place: 'Asaygo Company',
        fromTo: 'Aug 2019 - Apr 2022',
        bullets: [
          'Built and maintained real estate apps such as ChoChoLay House and chat applications like ChoChoLay Chat, optimizing Firebase services (Authentication, Firestore, Storage) for seamless user experiences.',
          'Developed various mobile applications using Flutter, including ChoChoLay Zay, ChoChoLay House, ChoChoLay Chat, and CMTFDN.',
          'Implemented GitHub Actions CI/CD, cutting deployment time by 20%.',
        ],
      ),
      Experience(
        role: 'Software Engineer',
        place: 'BizLeap Technology',
        fromTo: 'Apr 2019 - Jul 2019',
        bullets: [
          'Assisted in developing Java-based projects and deploying them.',
          'Dirt my hands with shell scripting for automated routine testing, reducing development time by 15%.',
        ],
      ),
    ];
  }

  void _setSkills() {
    mobileFrameworks = [
      Skill(name: 'Flutter'),
      Skill(name: 'Android (Java, Kotlin)'),
      Skill(name: 'iOS (Swift)'),
    ];
    otherPlatforms = [
      Skill(name: 'Flutter (Web, Mac, Windows, Linux)'),
    ];
    databases = [
      Skill(name: 'Firebase'),
      Skill(name: 'Supabase'),
      Skill(name: 'SQLite'),
      Skill(name: 'Hive'),
    ];
    versionControl = [
      Skill(name: 'Git'),
    ];
    ciCd = [
      Skill(name: 'CodeMagic'),
      Skill(name: 'GitHub Actions'),
    ];
    testing = [
      Skill(name: 'Unit'),
      Skill(name: 'Widget'),
      Skill(name: 'Integration Test'),
    ];
    cloudServices = [
      Skill(
          name:
              'Firebase (Auth, Firestore, Storage, Messaging, Hosting, Cloud Functions)'),
      Skill(name: 'Supabase (Auth, Relational Database, Storage, Hosting)'),
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
        bullets: [
          'The UnifAI app consists of three core features: MotifiMicro, YPB Tracer, and ProtectCode.',
          'MotifiMicro utilizes a unique method to decrypt images captured from the mobile camera and verifies their authenticity.',
          "YPB Tracer enables the integration of YPB's proprietary Tracer Scanner device with the mobile app. The device is connected via Bluetooth, allowing users to control and utilize the scanner to determine the authenticity of products.",
          'ProtectCode verifies the authenticity of products by scanning special QR codes. These QR codes are designed to prevent deep fakes and fraudulent activities.'
        ],
        image:
            'https://github-production-user-asset-6210df.s3.amazonaws.com/39454969/248655833-f7e005f6-321d-4e62-9fa0-298d74199f10.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.ypbsystems.unify',
        appStore: 'https://apps.apple.com/us/app/unifai/id1659586705',
      ),
      Project(
        name: 'MotifMicro',
        bullets: [
          'Utilizes a unique method to decrypt images captured from the mobile camera and verifies their authenticity using Custom Camera SDK.',
          'Utilized Android Native Kotlin and Swift to build the camera plugin.'
        ],
        image:
            'https://github-production-user-asset-6210df.s3.amazonaws.com/39454969/248656030-bebcb37e-7020-47ec-9ef8-9e6389defd0b.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.ypbsystems.motifmicro',
        appStore: 'https://apps.apple.com/us/app/motifmicro/id1607025052',
      ),
      Project(
        name: 'YPB Camera framework',
        bullets: [
          'The YPB Camera framework has special features to capture and detect images using Swift.'
        ],
      ),
      Project(
        name: 'YPB Tracer',
        bullets: [
          "Enables the integration of YPB's proprietary Tracer Scanner device with the mobile app via Bluetooth."
        ],
      ),
      Project(
        name: 'Protect Code Pro',
        bullets: [
          'Verifies the authenticity of products by scanning special QR codes generated using Python.'
        ],
      ),
      Project(
        name: 'ChoChoLay House',
        bullets: [
          'Real estate application allowing users to list properties for sale or rent, search for properties using a map feature, and find listings in specific locations.',
          'Utilized Firebase Authentication, Firebase Messaging, Firestore, Firebase Storage, Map Integration.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132947364-fafc648b-71d4-4793-a79e-68b5c96c9d6f.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.asaygo.ads',
        appStore: 'https://apps.apple.com/us/app/chocholay-house/id1494552674',
      ),
      Project(
        name: 'ChoChoLay Chat',
        bullets: [
          'Chatting application similar to WeChat, offering features such as voice calls, video calls, voice messages, friend requests, etc.',
          'Utilized Firebase Authentication, Firebase Messaging, Firestore, Firebase Storage.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132947375-63b32cd7-7b49-471d-b314-5806f52552fd.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.social',
        appStore: 'https://apps.apple.com/us/app/chocholay-chat/id1502347910',
      ),
      Project(
        name: 'ChoChoLay Zay',
        bullets: [
          'ERP application providing a learning platform for junior developers, allowing users to upload items for sale and search for properties.',
          'Utilized Firebase Authentication, Firebase Messaging, Firestore, Firebase Storage.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132947383-8d3cdd7c-2d41-489d-b59d-35245fba07bb.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.chocholay.zay',
      ),
      Project(
        name: 'CMTFDN',
        bullets: [
          "Ticket scanner app for a social organization's gathering event, allowing entrance ticket holders to attend, scanning tickets, verifying their validity, tracking attendance, and generating attendance reports."
        ],
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
        bullets: [
          'This highly popular app boasts an impressive user base of over 100k+ active users.',
          'Facilitates sharing notifications from both installed and system apps.',
          'Allows users to share notifications from social media platforms such as Messenger, Twitter, Instagram, TikTok, etc.',
          'Commonly used for business-related activities like banking notifications, messaging, and incoming call notifications.',
          'Utilized Firebase Authentication, Firebase Messaging, Firestore, Firebase Storage, Firebase Cloud Function, Firebase Analytics, Crashlytics, and Time-To-Live.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132948581-497ba7d2-b283-49f8-9f38-e90c8c8cacfd.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.share.notification',
      ),
      Project(
        name: 'iTube: Video Downloader',
        bullets: [
          'Popular Video Downloader app with a large user base.',
          'Enables users to download videos and audios from platforms like YouTube, Facebook, Instagram, etc.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/151582760-2560e441-90db-4f06-a739-b42938110e13.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.tube_downloader',
      ),
      Project(
        name: 'Second Space: Launcher',
        bullets: [
          'Offers a solution for hiding apps using the "second space" feature.',
          'Provides a simple and smooth launcher experience for Android phones.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132946754-5e50cf3f-2be4-4bce-83d1-70547d00a163.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.second.space',
      ),
      Project(
        name: 'FreeFlow VPN',
        bullets: [
          'A simple, user-friendly interface makes it easy for anyone to connect to a VPN with just one tap.',
          'Customize users VPN experience by choosing which apps to include or exclude from the VPN connection.'
        ],
        image:
            'https://github.com/user-attachments/assets/584be620-e979-40c7-946e-2a57c7c1cd42',
        playStore: 'https://play.google.com/store/apps/details?id=com.swn.vpn',
      ),
      Project(
        name: 'Debt Notes',
        bullets: [
          'Simplifies the process of managing and tracking debts.',
          'Designed to streamline the management of debts for individuals.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132948578-2ca9cac6-e6b0-4515-8cb4-2ff43d012267.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.debtnotes',
      ),
      Project(
        name: 'Lazy SMS',
        bullets: [
          'Allows users to schedule SMS messages to be sent at specific times using their preferred SIM card.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132947380-c1955f89-14f5-44e2-92a3-ed8129f458fe.png',
        playStore:
            'https://apkpure.com/lazy-sms-schedule-automatic-message-sender/com.lazy.message/download',
      ),
      Project(
        name: 'Text Hider',
        bullets: [
          'Enables users to encrypt and decrypt text messages within the app.',
          'Provides security and confidentiality for messages using various encryption algorithms.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132947382-1f894bc5-c678-4310-8f74-25f577af7683.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.lazy.hasttext',
      ),
      Project(
        name: 'Annoy Notification',
        bullets: [
          'A virus app built using Android Native, designed to send funny notifications to friends.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132950615-75f3c946-b5b8-4d01-8671-d46c550b3083.png',
        playStore:
            'https://play.google.com/store/apps/details?id=com.swn.creepy',
      ),
      Project(
        name: 'Flare Bottom Navigation',
        bullets: [
          'Custom bottom navigation with animation using Flare Flutter.'
        ],
        image:
            'https://user-images.githubusercontent.com/39454969/132947724-9937d083-9627-4f72-bef1-59ead96310bb.gif',
      ),
      Project(
        name: 'Flare Character',
        bullets: ['Animated using Flare.'],
        image:
            'https://user-images.githubusercontent.com/39454969/132947727-199e5fab-1673-44b0-adc2-66a1b6ee4fb3.gif',
        isFitHeight: true,
      ),
      Project(
        name: 'Flare Character',
        bullets: ['Animated using Flare.'],
        image:
            'https://github.com/shinewanna/BackgroundSmsPlugin/assets/39454969/29642316-13f8-42df-afe6-e210213aa10e',
        isFitHeight: true,
      ),
      Project(
        name: 'Background SMS',
        bullets: [
          'Flutter Plugin',
          'Provides SMS functionality in Flutter applications, including foreground, background, and headless mode using Android Native.'
        ],
        url: 'https://pub.dev/packages/background_sms',
      ),
      Project(
        name: 'Android AutoStart',
        bullets: [
          'Flutter Plugin',
          'Requests to enable AutoStart functionality using Android AutoStart.',
          'Created to provide reliable autostart functionality for Flutter developers using Android Native.'
        ],
        url: 'https://pub.dev/packages/android_autostart',
      ),
      Project(
        name: 'Multiselect Dropdown',
        bullets: [
          'Flutter Package',
          'Enhances user experience by adding a multiselecting feature to the Dropdown widget in Flutter.'
        ],
        url: 'https://pub.dev/packages//multiselect_dropdown',
      ),
      Project(
        name: 'Example Crypto App',
        bullets: [
          'The is a example app to decmonstrate my proficiency in building a sample app using Kotlin.',
          'Incorporated Dagger-Hilt for dependency injection.',
          'Integrated Retrofit for network requests.',
          'Followed Clean Architecture principles for better code organization and maintainability.'
        ],
        url: 'https://github.com/shinewanna/CryptoApp',
      ),
      Project(
        name: 'Example Photo App(built two years ago)',
        bullets: [
          'The is a example app to decmonstrate my proficiency in building a sample app using Flutter.',
          'Implemented features using Hive for local data storage.',
          'Utilized Test-Driven Development (TDD) for both widget and integration testing.',
          'Designed with the GetX Architecture for state management.'
        ],
        url: 'https://github.com/shinewanna/ypb-photos',
      ),
      Project(
        name: 'My Portfolio',
        bullets: [
          'Developed using Flutter',
          'Supported and reposonsive for both Android, iOS and Web',
        ],
        url: 'https://github.com/shinewanna/my-portfolio',
      ),
    ];
  }
}

MyInfo myInfo = MyInfo();
