import 'package:dio/dio.dart';
import 'package:hungry/core/utiles/pref_helper.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://sonic-zdi0.onrender.com/api',
      headers: {'Content-Type': 'application/json'},
    ),
  );

  DioClient() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (Options, Handle) async {
          final token = await PrefHelper.getToken();
          // '619|9AiqhsW8S2qtXkeXh5a9iS4cpspPv88BnaHLgoqyc047dca7';
          if (token != null && token.isNotEmpty) {
            Options.headers['Authorization'] = 'Bearer $token';
          }
          return Handle.next(Options);
        },
      ),
    );
  }
  Dio get dio {
    return _dio;
  }
}
