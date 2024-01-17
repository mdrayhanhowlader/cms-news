import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:get/get.dart' as getx;
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../local_db_services/local_db_services.dart';

class APIService extends getx.GetxService {
  var _dio;
  var _dioCacheOption;

  final serviceLocalDb = getx.Get.find<LocalDBService>();

  static final String liveUrl = 'https://api01.hudhud.my/api/v3/';

  static final String devUrl = 'https://devapi01.awfatech.com/api/v1/';
  static final String devUrlNew = 'https://devapi01.awfatech.com/';

  static final String url = devUrlNew;

  APIService() {
    BaseOptions options = BaseOptions(
        receiveTimeout: Duration(milliseconds: 20000),
        connectTimeout: Duration(milliseconds: 20000));
    _dio = Dio(options);

    _dioCacheOption = CacheOptions(
      store: MemCacheStore(maxSize: 10485760, maxEntrySize: 1048576),
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 7),
      priority: CachePriority.normal,
      cipher: null,
      keyBuilder: CacheOptions.defaultCacheKeyBuilder,
      allowPostMethod: false,
    );

    // LOG HERE
    _dio.interceptors.add(PrettyDioLogger());

    //CACHE HERE
    // _dio.interceptors.add(DioCacheInterceptor(options: _dioCacheOption));
  }

  Future<dynamic> get({String? endpoint, String? fullUrl}) async {
    Response response;
    try {
      response =
          await _dio.get((fullUrl == null) ? (url + (endpoint ?? "")) : fullUrl,
              options: Options(
                headers: {
                  "authorization": "Bearer " + serviceLocalDb.getToken(),
                },
              ));
      return response;
    } on DioError catch (error) {
      String er = _handleError(error);
      log(er);
      throw Exception(er);
    }
  }

  Future post(String endpoint, var body) async {
    try {
      Response response = await _dio.post(
        url + endpoint,
        data: body,
        options: Options(
          headers: {
            "Authorization": "Bearer " + serviceLocalDb.getLoginData()!.token!,
            "x-encrypted-key": serviceLocalDb.getToken(),
            "x-encrypted-user": serviceLocalDb.getLoginData()!.encryptedUser,
          },
        ),
      );
      return response;
    } on DioError catch (error) {
      if (error is DioError) {
        String er = _handleError(error);
        log(er);
        throw Exception(er);
      }
    }
  }

  Future postCustom(String endpoint, var body, {var customheaders}) async {
    try {
      Response response = await _dio.post(url + endpoint,
          data: body,
          options: Options(
            headers: customheaders ??
                {
                  "authorization": "Bearer " + serviceLocalDb.getToken(),
                },
          ));
      return response;
    } on DioError catch (error) {
      if (error is DioError) {
        String er = _handleError(error);
        log(er);
        throw Exception(er);
      }
    }
  }

  Future put(String endpoint, var body) async {
    // if(serviceLocalDb.getAppCodeData() != null) {
    //   body.putIfAbsent('idserver', () => serviceLocalDb.getAppCodeData()!.idserver.toString());
    // }
    // if(serviceLocalDb.getLoginData() != null){
    //   body.putIfAbsent('ic', () => serviceLocalDb.getLoginData()!.data!.userId.toString());
    // }
    try {
      Response response = await _dio.put(url + endpoint,
          data: body,
          options: Options(
            headers: {
              "authorization": "Bearer " + serviceLocalDb.getToken(),
            },
          ));
      return response;
    } on DioError catch (error) {
      if (error is DioError) {
        String er = _handleError(error);
        log(er);
        throw Exception(er);
      }
    }
  }

  String _handleError(DioError error) {
    String errorDescription = "";
    if (error is DioError) {
      switch (error.type) {
        case DioErrorType.cancel:
          errorDescription = "Request to API server was cancelled";
          break;
        case DioErrorType.connectionTimeout:
          errorDescription = "Connection timeout with API server";
          break;
        case DioErrorType.connectionError:
          errorDescription =
              "Connection to API server failed due to internet connection";
          break;
        case DioErrorType.receiveTimeout:
          errorDescription = "Receive timeout in connection with API server";
          break;
        case DioErrorType.badResponse:
          errorDescription =
              "${error.response?.data['error']}${error.response?.data['message'] != null ? " : " + error.response?.data['message'] : ""}";
          break;
        case DioErrorType.sendTimeout:
          errorDescription = "Send timeout in connection with API server";
          break;
        case DioErrorType.badCertificate:
          // TODO: Handle this case.
          break;
        case DioErrorType.unknown:
          // TODO: Handle this case.
          break;
      }
    } else {
      errorDescription = "Unexpected error occured";
    }
    return errorDescription;
  }
}
