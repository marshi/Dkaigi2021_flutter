import 'package:app/model/speaker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'speakers.freezed.dart';

part 'speakers.g.dart';

@freezed
abstract class Speakers with _$Speakers {
  const Speakers._();

  factory Speakers.fromJson(Map<String, dynamic> json) =>
      _$SpeakersFromJson(json);

  const factory Speakers({
    required String name,
    required String iconUrl,
  }) = _Speakers;

  Speaker toSpeakerModel() {
    return  Speaker(name: name, iconUrl: iconUrl);
  }
}
