class Project {
  final String name;
  final String description;
  final String? image;
  final String? playStore;
  final String? appStore;
  final String? url;
  final bool isFitHeight;

  Project(
      {required this.name,
      required this.description,
      this.image,
      this.playStore,
      this.appStore,
      this.url,
      this.isFitHeight = false});
}
