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
  Feedback(name: "Ronal Thampan", review: review, image: "images/people.png", id: 1, color: const Color(0xFFFFF3DD),),
  Feedback(name: "Ronal Thampan", review: review, image: "images/people.png", id: 2, color: const Color(0xFFFFF3DD),),
  Feedback(name: "Ronal Thampan", review: review, image: "images/people.png", id: 3, color: const Color(0xFFFFF3DD),),
];

String review = 'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ';