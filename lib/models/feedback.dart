import 'dart:ui';

class Feedback {
  final String name, review, image;
  final int id;
  final Color color;
  Feedback({
    required this.name, required this.review, required this.image, required this.id, required this.color,
  });
}

List<Feedback> feedbacks = [
  Feedback(name: "Zainullah", review: review, image: "images/zain.jpeg", id: 1, color: Color(0xFFFFF3DD),),
  Feedback(name: "Zainullah", review: review, image: "images/zain.jpeg", id: 2, color: Color(0xFFFFF3DD),),
  Feedback(name: "Zainullah", review: review, image: "images/zain.jpeg", id: 3, color: Color(0xFFFFF3DD),),
];

String review = 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ';