import 'package:dartz/dartz.dart';

abstract class Usecase<Types, Params> {
  Future<Either> call({Params params});
}