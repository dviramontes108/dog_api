part of 'dogs_bloc.dart';

enum DogsStatus {
  initial,
  loading,
  loaded,
  error,
}

class DogsState extends Equatable {
  const DogsState({
    required this.dogs,
    required this.status,
    this.dog,
    this.errorMessage,
  });

  const DogsState.initial()
      : this(
          dogs: const [],
          status: DogsStatus.initial,
        );

  final List<Dog> dogs;
  final DogsStatus status;
  final Dog? dog;
  final String? errorMessage;

  DogsState copyWith(
      {DogsStatus? status, List<Dog>? dogs, Dog? dog, String? errorMessage}) {
    return DogsState(
      status: status ?? this.status,
      dogs: dogs ?? this.dogs,
      dog: dog ?? this.dog,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, dogs, dog, errorMessage];
}
