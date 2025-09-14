class GetRelevantPatientParams {
  final String patientId;
  int? pageNumber;
  int? pageSize;

  GetRelevantPatientParams({
    required this.patientId,
    this.pageNumber,
    this.pageSize,
  }) {
    if (pageNumber == null) {
      pageNumber = 1;
    }
    if (pageSize == null) {
      pageSize = 25;
    }
  }
}
