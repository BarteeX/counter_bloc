import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class DecrementCounter extends CounterEvent {}

class IncrementCounter extends CounterEvent {}
