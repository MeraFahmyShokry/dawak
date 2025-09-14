class AvailableTimeForAppointments {
  AvailableTimeForAppointments({
    required this.dayName,
    required this.date,
    required this.availableTimes,
  });

  final String? dayName;
  final DateTime? date;
  final List<String> availableTimes;

  factory AvailableTimeForAppointments.fromJson(Map<String, dynamic> json) {
    return AvailableTimeForAppointments(
      dayName: json["dayName"],
      date: DateTime.tryParse(json["date"] ?? ""),
      availableTimes: json["availableTimes"] == null
          ? []
          : List<String>.from(json["availableTimes"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "dayName": dayName,
        "date": "${date.toString()}",
        "availableTimes": availableTimes.map((x) => x).toList(),
      };
}
