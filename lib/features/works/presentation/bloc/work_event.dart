part of 'work_bloc.dart';

sealed class WorkEvent extends Equatable {
  const WorkEvent();

  @override
  List<Object> get props => [];
}

class LoadWorkData extends WorkEvent {
  final NoParams params;

  const LoadWorkData({required this.params});

  @override
  List<Object> get props => [params];
}
