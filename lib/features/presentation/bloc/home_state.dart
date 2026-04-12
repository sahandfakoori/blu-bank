sealed class HomeState {}

// class LoadingBalanceState extends HomeState {}
//
// class FetchBalanceState extends HomeState {}
//
// class FailedBalanceState extends HomeState {}

class HideState extends HomeState {
  final bool isHide;

  HideState(this.isHide);
}

