class FeedbackModel {
  late String year, name, event, city, feedback;
  FeedbackModel(
      {required this.year,
      required this.name,
      required this.event,
      required this.city,
      required this.feedback});
  factory FeedbackModel.fromJson(dynamic json) {
    return FeedbackModel(
      feedback: "${json['feedback']}",
      year: "${json['year']}",
      name: "${json['name']}",
      event: "${json['event']}",
      city: "${json['city']}",
    );
  }
  Map toJson() => {
        "year": year,
        "name": name,
        "event": event,
        "city": city,
      };
      
}
