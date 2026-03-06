import 'package:dartz/dartz.dart';
import 'package:soundz_music_app/core/usecases/usecase.dart';
import 'package:soundz_music_app/data/models/auth/create_user_request.dart';
import 'package:soundz_music_app/domain/repositories/auth/auth_repository.dart';
import 'package:soundz_music_app/service_locator.dart';

class SignupUsecase implements Usecase<Either, CreateUserRequest>{
  @override
  Future<Either> call({CreateUserRequest? params}) async{
    return sl<AuthRepository>().signup(params!);
  }
  

}