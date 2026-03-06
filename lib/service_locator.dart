import 'package:get_it/get_it.dart';
import 'package:soundz_music_app/data/repositories/auth/auth_repo_implementation.dart';
import 'package:soundz_music_app/data/sources/auth/auth_firebase_service.dart';
import 'package:soundz_music_app/domain/repositories/auth/auth_repository.dart';
import 'package:soundz_music_app/domain/usecases/auth/signup_usecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async{
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImplementation());
  sl.registerSingleton<AuthRepository>(AuthRepoImplementation());
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
}