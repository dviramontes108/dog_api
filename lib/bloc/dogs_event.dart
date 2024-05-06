part of 'dogs_bloc.dart';

abstract class DogsEvent extends Equatable {
  const DogsEvent();
  @override
  List<Object> get props => [];
}

class DogsInitEvent extends DogsEvent {
  const DogsInitEvent();
}

class DogDetail extends DogsEvent {
  const DogDetail(this.dog);
  final Dog dog;
}
