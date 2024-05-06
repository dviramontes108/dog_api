import 'package:doc_ceo_api/bloc/dogs_bloc.dart';
import 'package:doc_ceo_api/model/dog.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DogsEvent', () {
    group('DogsInitEvent', () {
      test('supports value equality', () {
        expect(const DogsInitEvent(), const DogsInitEvent());
      });
      test('props are correct', () {
        expect(const DogsInitEvent().props, equals(<Object?>[]));
      });
    });
    group('DogDetail', () {
      test('supports value equality', () {
        expect(const DogDetail(Dog(name: 'name', breeds: [])),
            const DogDetail(Dog(name: 'name', breeds: [])));
      });
      test('props are correct', () {
        expect(const DogDetail(Dog(name: 'name', breeds: [])).props,
            equals(<Object?>[]));
      });
    });
  });
}
