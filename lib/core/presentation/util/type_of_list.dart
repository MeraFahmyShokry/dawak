import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/cubit/general_state.dart';


typedef PaginatedList<T> = BaseResponseModel<List<T>>;

typedef BasicResponse<T> = BaseResponseModel<T>;

typedef PaginatedState<T> = GeneralState<BaseResponseModel<List<T>>>;

typedef BasicState<T> = GeneralState<BaseResponseModel<T>>;

typedef ListState<T> = GeneralState<List<T>>;
