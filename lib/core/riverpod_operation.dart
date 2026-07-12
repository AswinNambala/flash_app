import 'package:flash_app/data/torch_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:torch_light/torch_light.dart';

class TorchController extends Notifier<TorchModel> {
  @override
  TorchModel build() {
    checkAvaliability();
    return TorchModel();
  }

  Future<void> checkAvaliability() async {
    final torchStatus = await TorchLight.isTorchAvailable();
    state = state.copyWith(cisAvaliable: torchStatus);
  }

  Future<void> toggle() async {
    if (state.isOn) {
      await TorchLight.disableTorch();
    } else {
      await TorchLight.enableTorch();
    }
    state = state.copyWith(cIsOn: !state.isOn);
  }
}

final torchProvider = NotifierProvider<TorchController, TorchModel>(() {
  return TorchController();
});
