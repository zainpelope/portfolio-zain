class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork( {required this.image, required this.category, required this.title, required this.id,});
}

List<RecentWork> recentWork = [
  RecentWork(image: "images/work_1.png", category: "Graphic Design", title: "New & Fresh Looking Portfolio Indeed at the End", id: 1),
  RecentWork(image: "images/work_2.png", category: "Graphic Design", title: "New & Fresh Looking Portfolio Indeed at the End", id: 2),
  RecentWork(image: "images/work_3.png", category: "Graphic Design", title: "New & Fresh Looking Portfolio Indeed at the End", id: 3),
  RecentWork(image: "images/work_4.png", category: "Graphic Design", title: "New & Fresh Looking Portfolio Indeed at the End", id: 4),
];