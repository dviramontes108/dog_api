// ignore_for_file: non_constant_identifier_names

import 'package:doc_ceo_api/model/dog.dart';
import 'package:doc_ceo_api/repository/dogs_repository.dart';
import 'package:doc_ceo_api/repository/dogs_resp_exceptions.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'dogs_event.dart';
part 'dogs_state.dart';

class DogsBloc extends Bloc<DogsEvent, DogsState> {
  DogsBloc({
    required DogsRepository dogsRepository,
  })  : _dogsRepository = dogsRepository,
        super(const DogsState.initial()) {
    on<DogsInitEvent>(_DogsInitEvent);
    on<DogDetail>(_DogDetail);
  }

  final DogsRepository _dogsRepository;

  Future<void> _DogsInitEvent(
    DogsInitEvent event,
    Emitter<DogsState> emit,
  ) async {
    emit(state.copyWith(status: DogsStatus.loading));
    try {
      final dogs = await _dogsRepository.getAllDogs();
      emit(
        state.copyWith(
          dogs: dogs,
          status: DogsStatus.loaded,
        ),
      );
    } on DogsRespException catch (e) {
      emit(
        state.copyWith(
          status: DogsStatus.error,
          errorMessage: e.message,
        ),
      );
    }
  }

  Future<void> _DogDetail(
    DogDetail event,
    Emitter<DogsState> emit,
  ) async {
    emit(state.copyWith(status: DogsStatus.loading, dog: event.dog));
    final dog = await _dogsRepository.getDogDetail(dog: event.dog);
    emit(state.copyWith(status: DogsStatus.loaded, dog: dog));
  }
}
