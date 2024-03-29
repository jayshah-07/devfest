import 'package:bloc/bloc.dart';

import 'config_event.dart';
import 'config_state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  // singelton
  static final ConfigBloc _configBlocSingleton = ConfigBloc._internal();

  factory ConfigBloc() {
    return _configBlocSingleton;
  }

  ConfigBloc._internal();

  bool darkModeOn = false;

  @override
  ConfigState get initialState => UnConfigState();

  @override
  Stream<ConfigState> mapEventToState(
    ConfigEvent event,
  ) async* {
    try {
      yield UnConfigState();
      yield await event.applyAsync(currentState: state, bloc: this);
    } catch (_, stackTrace) {
      print('$_,$stackTrace');
      yield state;
    }
  }
}
