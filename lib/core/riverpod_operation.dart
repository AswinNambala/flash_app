import 'package:flash_app/data/auth/auth_service.dart';
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
    try {
      if (state.isOn) {
        final authed = await ref
            .read(authProvider)
            .authenthicationForFingerPrint();
        if (!authed) return;
        await TorchLight.disableTorch();
        state = state.copyWith(cIsOn: false);
      } else {
        await TorchLight.enableTorch();
        state = state.copyWith(cIsOn: true);
      }
    } catch (e) {
      return;
    }
  }
}

final torchProvider = NotifierProvider<TorchController, TorchModel>(() {
  return TorchController();
});

final authProvider = Provider((ref) => AuthSerivces());
