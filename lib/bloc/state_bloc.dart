import 'dart:async';
import 'package:rent_car_app/bloc/state_provider.dart';

class StateBloc {
  StreamController animationController = StreamController();
  final provider = StateProvider();

  Stream get animationStatus => animationController.stream;

  void toggleAnimation () {
    provider.toggleAnimationValue();
    animationController.sink.add(provider.isAnimating);
  }

  void dispose() {
    animationController.close();
  }
}

final stateBloc = StateBloc();