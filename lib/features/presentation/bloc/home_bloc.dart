import 'package:blubank/features/presentation/bloc/home_event.dart';
import 'package:blubank/features/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc() : super(HideState(false)) {
    on<HideBalance>(_onHideBalance);
  }

  void _onHideBalance(HideBalance event, Emitter<HomeState> emit) {
    emit(HideState(!event.isHide));
  }
}