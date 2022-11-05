class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork( {required this.image, required this.category, required this.title, required this.id,});
}

List<RecentWork> recentWork = [
  RecentWork(image: "images/zain.jpeg", category: "ayam bakar", title: "sossis", id: 1),
  RecentWork(image: "images/zain.jpeg", category: "ayam bakar", title: "sossis", id: 2),
  RecentWork(image: "images/zain.jpeg", category: "ayam bakar", title: "sossis", id: 3),
  RecentWork(image: "images/zain.jpeg", category: "ayam bakar", title: "sossis", id: 4),
];