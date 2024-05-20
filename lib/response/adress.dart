import 'package:json_annotation/json_annotation.dart';
part 'adress.g.dart';

@JsonSerializable()
class Main {
  final temp;
  Main(this.temp);

  factory Main.fromJson(Map<String, dynamic> json) =>
      _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}