import 'package:local_auth/local_auth.dart';

class AuthSerivces {
  final auth = LocalAuthentication();
  Future<bool> authenthicationForFingerPrint() async {
    try {
      final canCheck = await auth.canCheckBiometrics;
      final isSupport = await auth.isDeviceSupported();
      if (!canCheck || !isSupport) return false;
      return await auth.authenticate(
        localizedReason: 'Authenication to turn off the torch',
        biometricOnly: false,
        persistAcrossBackgrounding: true,
      );
    } catch (e) {
      return false;
    }
  }
}
