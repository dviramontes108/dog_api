import 'package:equatable/equatable.dart';

abstract class DogsRespException extends Equatable implements Exception {
  const DogsRespException({
    this.error,
    this.stackTrace,
    required this.message,
  });
  final Object? error;
  final StackTrace? stackTrace;
  final String message;
  @override
  List<Object> get props => [message];
}

class ErrorRespFailure extends DogsRespException {
  const ErrorRespFailure(
      {super.error, super.stackTrace, required super.message});
}

class ParseFailure extends DogsRespException {
  const ParseFailure({super.error, super.stackTrace, required super.message});
}
