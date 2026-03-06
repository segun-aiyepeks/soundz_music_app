import 'package:dartz/dartz.dart';
import 'package:soundz_music_app/core/usecases/usecase.dart';
import 'package:soundz_music_app/data/models/auth/signin_user_request.dart';
import 'package:soundz_music_app/domain/repositories/auth/auth_repository.dart';
import 'package:soundz_music_app/service_locator.dart';

class SigninUsecase implements Usecase<Either, SignInUserRequest>{
  @override
  Future<Either> call({SignInUserRequest? params}) async{
    return sl<AuthRepository>().signin(params!);
  }

}