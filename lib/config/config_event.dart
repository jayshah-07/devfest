import 'package:devfest/config/config_bloc.dart';
import 'package:devfest/config/config_state.dart';
import 'package:devfest/utils/devfest.dart';
import 'package:equatable/equatable.dart';

abstract class ConfigEvent extends Equatable {
  const ConfigEvent();
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc});
}

class DarkModeEvent extends ConfigEvent {

  final bool darkModeOn;
  DarkModeEvent(this.darkModeOn);

  @override
  String toString() => "DarkModeEvent";

  @override
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc}) async {
    
    try {
      bloc.darkModeOn = darkModeOn;
      Devfest.prefs.setBool(Devfest.darkModePref, darkModeOn);
      return InConfigState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorConfigState(_?.toString());
    }
  }

  @override
  // TODO: implement props
  List<Object> get props => null;
  
}

class LoadConfigEvent extends ConfigEvent{

  @override
  String toString() => "LoadConfigEvent";

  @override
  Future<ConfigState> applyAsync({ConfigState currentState, ConfigBloc bloc}) async {
    
    try {
      await Future.delayed(Duration(seconds: 2));
       return InConfigState();
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      return ErrorConfigState(_?.toString());
    }
   
  }

  @override
  // TODO: implement props
  List<Object> get props => null;

}