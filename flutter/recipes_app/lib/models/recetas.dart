class Receta {
  final String id;
  final String patientId;
  final String medication;
  final String issuedAt;
  final String doctor;
  final String notes;

  Receta({
    required this.id,
    required this.patientId,
    required this.medication,
    required this.issuedAt,
    required this.doctor,
    required this.notes,
  });

  factory Receta.fromJson(Map<String, dynamic> json) {
    return Receta(
      id: json['id'],
      patientId: json['patientId'],
      medication: json['medication'],
      issuedAt: json['issuedAt'],
      doctor: json['doctor'],
      notes: json['notes'],
    );
  }
}
