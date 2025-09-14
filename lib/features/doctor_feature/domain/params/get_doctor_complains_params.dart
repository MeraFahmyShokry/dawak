class GetAllDoctorComplaintsParams {
  final int? specialistId;
  final String? doctorId;
  final int? complainStatusId;
  int? pageNumber;
  int? pageSize;

  GetAllDoctorComplaintsParams({
    this.specialistId,
    this.doctorId,
    this.complainStatusId,
    // this.assistantId,
    this.pageNumber,
    this.pageSize,
  }) {
    pageNumber ??= 1;
    pageSize ??= 1;
  }
}
