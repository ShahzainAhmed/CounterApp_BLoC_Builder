part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

// we will be passing the value from BLoC to our UI
class CounterIncrementState extends CounterState {
  final int value;

  CounterIncrementState({required this.value});
}
