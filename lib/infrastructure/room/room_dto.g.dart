// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDto _$_$_RoomDtoFromJson(Map<String, dynamic> json) {
  return _$_RoomDto(
    creator: json['creator'] as String,
    type: json['type'] as String,
    name: json['name'] as String,
    dateMicroseconds: json['dateMicroseconds'] as int,
    from: (json['from'] as List)?.map((e) => e as int)?.toList(),
    breakDuration: json['breakDuration'] as String,
    description: json['description'] as String,
    inviteOnly: json['inviteOnly'] as bool,
  );
}

Map<String, dynamic> _$_$_RoomDtoToJson(_$_RoomDto instance) =>
    <String, dynamic>{
      'creator': instance.creator,
      'type': instance.type,
      'name': instance.name,
      'dateMicroseconds': instance.dateMicroseconds,
      'from': instance.from,
      'breakDuration': instance.breakDuration,
      'description': instance.description,
      'inviteOnly': instance.inviteOnly,
    };

_$_RoomTimeDto _$_$_RoomTimeDtoFromJson(Map<String, dynamic> json) {
  return _$_RoomTimeDto(
    dateMicroseconds: json['dateMicroseconds'] as int,
    from: (json['from'] as List)?.map((e) => e as int)?.toList(),
    to: (json['to'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$_$_RoomTimeDtoToJson(_$_RoomTimeDto instance) =>
    <String, dynamic>{
      'dateMicroseconds': instance.dateMicroseconds,
      'from': instance.from,
      'to': instance.to,
    };
