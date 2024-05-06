import 'package:doc_ceo_api/bloc/dogs_bloc.dart';
import 'package:doc_ceo_api/model/dog.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DogsState', () {
    const mockDog = Dog(name: 'name', breeds: []);
    const mockDogs = [mockDog];
    group('DogsState, initial', () {
      const mockStatus = DogsStatus.initial;

      DogsState createSubject() {
        return const DogsState(dogs: mockDogs, status: mockStatus);
      }

      test('supports value equality', () {
        expect(createSubject(), equals(createSubject()));
      });

      test('props are correct', () {
        expect(createSubject().props,
            equals(<Object?>[mockStatus, mockDogs, null, null]));
      });
      test('returns object with updated status', () {
        expect(createSubject().copyWith(status: DogsStatus.loaded),
            const DogsState(dogs: mockDogs, status: DogsStatus.loaded));
      });
    });
  });
}
