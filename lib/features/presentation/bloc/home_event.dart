sealed class HomeEvent {}

// class FetchBalance extends HomeEvent {}
//
// class FetchTransactions extends HomeEvent {}

class HideBalance extends HomeEvent {
  final bool isHide;

  HideBalance(this.isHide);
}
