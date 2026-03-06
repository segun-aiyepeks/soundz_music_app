import 'package:dartz/dartz.dart';
import 'package:soundz_music_app/data/models/auth/create_user_request.dart';

abstract class AuthRepository {
  Future<Either> signup(CreateUserRequest createRequest);
  Future<void> signin();
}