// ignore_for_file: unused_import

import 'package:doc_ceo_api/bloc/dogs_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:doc_ceo_api/repository/dogs_repository.dart';

@GenerateNiceMocks([MockSpec<DogsRepository>()])
import 'test_mocks.mocks.dart';
