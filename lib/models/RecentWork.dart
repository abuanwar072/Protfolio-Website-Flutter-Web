class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Graphic Design",
    image: "assets/images/work_4.png",
  ),
];
