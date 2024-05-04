// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegisterUserModelAdapter extends TypeAdapter<RegisterUserModel> {
  @override
  final int typeId = 0;

  @override
  RegisterUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RegisterUserModel(
      userName: fields[0] as String?,
      password: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, RegisterUserModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.userName)
      ..writeByte(1)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegisterUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
