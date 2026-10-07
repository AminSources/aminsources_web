part of 'work_bloc.dart';

sealed class WorkState extends Equatable {
  const WorkState();

  @override
  List<Object> get props => [];
}

final class WorkInitial extends WorkState {}

final class WorkLoading extends WorkState {}

final class WorkError extends WorkState {
  final String message;

  const WorkError({required this.message});

  @override
  List<Object> get props => [message];
}

final class WorkLoaded extends WorkState {
  final List<WorkEntity> data;

  const WorkLoaded({required this.data});

  @override
  List<Object> get props => [data];
}
