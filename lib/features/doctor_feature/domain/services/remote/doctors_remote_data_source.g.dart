// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_remote_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter

class _DoctorsServices implements DoctorsServices {
  _DoctorsServices(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<BaseResponseModel<List<SpecialistsModel>>> getAllSpecialist({
    int? languageId,
    int? pageNumber,
    int? pageSize,
    String? orderBy,
    String? sortDir,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'LanguageId': languageId,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'OrderBy': orderBy,
      r'SortDir': sortDir,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<List<SpecialistsModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'Specialist/GetAllSpecialist',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<SpecialistsModel>> _value;
    try {
      _value = BaseResponseModel<List<SpecialistsModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<SpecialistsModel>(
                    (i) => SpecialistsModel.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<TopDoctorsReview>>> getAllDoctorReviews({
    int? pageNumber,
    int? pageSize,
    String? orderBy,
    String? sortDir,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'OrderBy': orderBy,
      r'SortDir': sortDir,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<List<TopDoctorsReview>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'Review/GetAllDoctorReviews',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<TopDoctorsReview>> _value;
    try {
      _value = BaseResponseModel<List<TopDoctorsReview>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<TopDoctorsReview>(
                    (i) => TopDoctorsReview.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<DoctorDetailsModel>> getDoctorDetailsById({
    required String id,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<DoctorDetailsModel>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'User/GetAboutDoctor/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<DoctorDetailsModel> _value;
    try {
      _value = BaseResponseModel<DoctorDetailsModel>.fromJson(
        _result.data!,
        (json) => DoctorDetailsModel.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<DoctorModel>>> getDoctors({
    int? specialistId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'SpecialistId': specialistId,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<BaseResponseModel<List<DoctorModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/User/GetDoctors?',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<DoctorModel>> _value;
    try {
      _value = BaseResponseModel<List<DoctorModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<DoctorModel>(
                    (i) => DoctorModel.fromJson(i as Map<String, dynamic>),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<DoctorComplaintsModel>>>
  getAllDoctorComplaints({
    int? specialistId,
    String? doctorId,
    int? complainStatusId,
    int? pageNumber,
    int? pageSize,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'SpecialistId': specialistId,
      r'DoctorId': doctorId,
      r'ComplainStatusId': complainStatusId,
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<BaseResponseModel<List<DoctorComplaintsModel>>>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/Complains/GetAllDoctorComplains?',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<DoctorComplaintsModel>> _value;
    try {
      _value = BaseResponseModel<List<DoctorComplaintsModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                  .map<DoctorComplaintsModel>(
                    (i) => DoctorComplaintsModel.fromJson(
                      i as Map<String, dynamic>,
                    ),
                  )
                  .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
