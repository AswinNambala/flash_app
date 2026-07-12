import 'package:flash_app/core/riverpod_operation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlashHomePage extends ConsumerWidget {
  const FlashHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(torchProvider);
    return Scaffold(
      backgroundColor: controller.isOn ? Colors.white : Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                border: Border.all(color: Colors.black, width: 4),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: !controller.isOn
                    ? IconButton(
                        onPressed: () {
                          ref.read(torchProvider.notifier).toggle();
                        },
                        icon: Icon(Icons.flashlight_on_rounded, size: 80),
                      )
                    : IconButton(
                        onPressed: () {
                          ref.read(torchProvider.notifier).toggle();
                        },
                        icon: Icon(Icons.flashlight_off_rounded, size: 80),
                      ),
              ),
            ),
            const SizedBox(height: 20),
            if (controller.isAvaliable)
              Text(
                controller.isOn ? 'T O R C H   O N' : 'T O R C H   O F F',
                style: TextStyle(
                  color: controller.isOn ? Colors.black : Colors.white,
                  fontSize: 28,
                ),
              )
            else
              Text(
                'N O  F L A S H   O N   T H I S   D E V I C E',
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
          ],
        ),
      ),
    );
  }
}
