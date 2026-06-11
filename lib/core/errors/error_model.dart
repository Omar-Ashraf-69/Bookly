import 'package:bookly/core/api/end_points.dart';

class ErrorModel {
  final String message;
final String status;
  final int code;
  ErrorModel({required this.message,required this.status,required this.code,});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(message: json[ApiKey.message],code: json[ApiKey.code],status: json[ApiKey.status],);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json[ApiKey.status] = status;
    json[ApiKey.code] = code;
    json[ApiKey.message] = message;
    return json;
  }
}
