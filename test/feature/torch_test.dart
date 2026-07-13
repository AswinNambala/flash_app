// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/that_torch_is_not_available_in_device.dart';
import './step/should_display_a_text_n_o_f_l_a_s_h_o_n_t_h_i_s_d_e_v_i_c_e.dart';
import './step/that_torch_is_off.dart';
import './step/torch_is_available_in_the_device.dart';
import './step/the_user_tap_on_icons_button_torch_icon.dart';
import './step/the_torch_should_be_turn_on.dart';
import './step/the_background_color_should_turn_white.dart';
import './step/that_the_torch_on.dart';
import './step/i_tap_on_icons_button_torch_icon.dart';
import './step/the_authentication_succeed.dart';
import './step/torch_should_turn_off.dart';
import './step/background_color_should_be_black.dart';
import './step/the_authentication_failed.dart';
import './step/torch_should_remain_turn_on.dart';
import './step/background_color_should_be_white.dart';

void main() {
  group('''Torch Control''', () {
    testWidgets('''Checking the availability of torch/flash in phone''',
        (tester) async {
      await thatTorchIsNotAvailableInDevice(tester);
      await shouldDisplayATextNOFLASHONTHISDEVICE(tester);
    });
    testWidgets('''turning the torch on''', (tester) async {
      await thatTorchIsOff(tester);
      await torchIsAvailableInTheDevice(tester);
      await theUserTapOnIconsButtonTorchIcon(tester);
      await theTorchShouldBeTurnOn(tester);
      await theBackgroundColorShouldTurnWhite(tester);
    });
    testWidgets('''turning off the torch require authentication''',
        (tester) async {
      await thatTheTorchOn(tester);
      await iTapOnIconsButtonTorchIcon(tester);
      await theAuthenticationSucceed(tester);
      await torchShouldTurnOff(tester);
      await backgroundColorShouldBeBlack(tester);
    });
    testWidgets('''turning off the torch without authentication''',
        (tester) async {
      await thatTheTorchOn(tester);
      await iTapOnIconsButtonTorchIcon(tester);
      await theAuthenticationFailed(tester);
      await torchShouldRemainTurnOn(tester);
      await backgroundColorShouldBeWhite(tester);
    });
  });
}
