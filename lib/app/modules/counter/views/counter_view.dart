import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController c = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('di klik : ${c.bilangan}'),
            ),
            const SizedBox(height: 20), // Spacer for better layout
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    c.tambahsatu();
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20), // Space between buttons
                ElevatedButton(
                  onPressed: () {
                    c.kurangsatu();
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
