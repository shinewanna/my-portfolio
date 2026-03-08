class Project {
  final String name;
  final List<String> bullets;
  final String? image;
  final String? playStore;
  final String? appStore;
  final String? url;
  final List<String> techStack;
  final bool isFitHeight;

  Project(
      {required this.name,
      required this.bullets,
      this.techStack = const [],
      this.image,
      this.playStore,
      this.appStore,
      this.url,
      this.isFitHeight = false});
}
