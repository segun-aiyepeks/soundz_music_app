import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:soundz_music_app/data/models/auth/create_user_request.dart';
import 'package:soundz_music_app/data/models/auth/signin_user_request.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserRequest createRequest);
  Future<Either> signin(SignInUserRequest signUser);
}

class AuthFirebaseServiceImplementation extends AuthFirebaseService {
  
  
  @override
  Future<Either> signin(SignInUserRequest signUser) async {
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signUser.email, 
        password: signUser.password);
    return Right("Sign In was Successfull!");
    } on FirebaseAuthException catch(e) {
      String message = '';
      if(e.code == 'invalid-email'){
        message = "Your email is invalid";
      }
      else if(e.code == 'invalid-credential'){
        message = "Invalid password";
      }
      else if(e.code == 'empty'){
        message = "This field can't be empty";
      }
      else{
        message = "Invalid action";
      }
     return Left(message);
    }
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
      else if(e.code == 'empty'){
        message = "This field can't be empty";
      }
      else{
        message = "Invalid action";
      }
     return Left(message);
    }

  }
  
}