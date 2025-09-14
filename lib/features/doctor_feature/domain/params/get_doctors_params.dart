class GetDoctorsParams {
  final int? specialty;
  int? pageNumber;
  int? pageSize;

  GetDoctorsParams({
    this.specialty,
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
