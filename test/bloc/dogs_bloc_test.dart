import 'package:bloc_test/bloc_test.dart';
import 'package:doc_ceo_api/bloc/dogs_bloc.dart';
import 'package:doc_ceo_api/model/dog.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../test_mocks.mocks.dart';

void main() {
  group('DogsBloc', () {
    late DogsBloc dogsBloc;
    MockDogsRepository mockDogsRepository;
    var mockDog = const Dog(name: 'name', breeds: []);
    setUp(() {
      mockDogsRepository = MockDogsRepository();
      dogsBloc = DogsBloc(dogsRepository: mockDogsRepository);
      when(mockDogsRepository.getDogDetail(
        dog: mockDog,
      )).thenAnswer((value) async {
        return mockDog;
      });
    });
    blocTest<DogsBloc, DogsState>('_DogsInitEvent',
        build: () => dogsBloc,
        act: (bloc) => bloc.add(const DogsInitEvent()),
        expect: () => [
              const DogsState(dogs: [], status: DogsStatus.loading),
              const DogsState(dogs: [], status: DogsStatus.loaded)
            ]);
    blocTest<DogsBloc, DogsState>('_DogDetail',
        build: () => dogsBloc,
        act: (bloc) => bloc.add(DogDetail(mockDog)),
        expect: () => [
              DogsState(
                  dogs: const [], status: DogsStatus.loading, dog: mockDog),
              DogsState(dogs: const [], status: DogsStatus.loaded, dog: mockDog)
            ]);
  });
}
