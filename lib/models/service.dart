import 'dart:ui';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service( {required this.id, required this.title, required this.image, required this.color,});
}

List<Service> services = [
  Service(
    id:1,
    title: "Graphic Design",
    image: "images/graphic.png",
    color: const Color(0xFFFFF7D9),
  ),
  Service(
    id:2,
    title: "Web Design",
    image: "images/desktop.png",
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id:3,
    title: "UI Design",
    image: "images/ui.png",
    color: const Color(0xFFF7E8FF),
  ),
  Service(
    id:4,
    title: "Intreaction Design",
    image: "images/intreaction_design.png",
    color: const Color(0xFFD9FFFC),
  ),
];