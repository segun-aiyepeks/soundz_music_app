import 'package:dartz/dartz.dart';
import 'package:soundz_music_app/data/models/auth/create_user_request.dart';
import 'package:soundz_music_app/data/models/auth/signin_user_request.dart';
import 'package:soundz_music_app/data/sources/auth/auth_firebase_service.dart';
import 'package:soundz_music_app/domain/repositories/auth/auth_repository.dart';
import 'package:soundz_music_app/service_locator.dart';

class AuthRepoImplementation extends AuthRepository {
  
  @override
  Future<Either> signin(SignInUserRequest signUser) async{
   return await sl<AuthFirebaseService>().signin(signUser);
  }

  @override
  Future<Either> signup(CreateUserRequest createRequest) async{
   return await sl<AuthFirebaseService>().signup(createRequest);
  }
  
}