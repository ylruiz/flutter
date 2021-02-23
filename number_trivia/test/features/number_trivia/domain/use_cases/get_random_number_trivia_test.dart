import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/use_cases/use_cases.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia/features/number_trivia/domain/use_cases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia useCase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    useCase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get trivia from the repository', () async {
    // arrange
    when(mockNumberTriviaRepository.getRandomNumberTrivia())
    .thenAnswer((_) async => Right(tNumberTrivia));
    // act
    final result = await useCase(NoParams());
    // assert
    expect(result, Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
