import 'package:dartz/dartz.dart';
import 'package:soundz_music_app/data/models/auth/create_user_request.dart';
import 'package:soundz_music_app/data/sources/auth/auth_firebase_service.dart';
import 'package:soundz_music_app/domain/repositories/auth/auth_repository.dart';
import 'package:soundz_music_app/service_locator.dart';

class AuthRepoImplementation extends AuthRepository {
  
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserRequest createRequest) async{
   return await sl<AuthFirebaseService>().signup(createRequest);
  }
  
}