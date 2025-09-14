class GetClinicsParams {
  final String? doctorId;
  final String? assistantId;
  int? pageNumber;
  int? pageSize;

  GetClinicsParams({
    this.doctorId,
    this.assistantId,
    this.pageNumber,
    this.pageSize,
  }) {
    pageNumber ??= 1;
    pageSize ??= 1;
  }
}
