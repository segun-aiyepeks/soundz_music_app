import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:soundz_music_app/data/models/auth/create_user_request.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserRequest createRequest);
  Future<void> signin();
}

class AuthFirebaseServiceImplementation extends AuthFirebaseService {
  
  
  @override
  Future<void> signin() {
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserRequest createRequest) async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createRequest.email, 
        password: createRequest.password);
    return Right("Sign Up was Successfull!");
    } on FirebaseAuthException catch(e) {
      String message = '';
      if(e.code == 'weak password'){
        message = "Your password is to weak";
      }
      else if(e.code == 'e-mail already in use'){
        message = "This account already exists";
      }
     return Left(message);
    }

  }
  
}