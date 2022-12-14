import 'dart:convert';

class OnErrorWrapper {
  OnErrorWrapper({
    required this.message,
  });

  String message;

  factory OnErrorWrapper.fromRawJson(String str) =>
      OnErrorWrapper.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnErrorWrapper.fromJson(Map<String, dynamic> json) => OnErrorWrapper(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}