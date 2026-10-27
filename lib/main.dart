import 'package:flutter/material.dart';
import 'package:hw1/widgets/profile_card.dart';
import 'package:hw1/widgets/action_item.dart';
import 'package:hw1/widgets/setting_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Center App",
      home: Scaffold(
        appBar: AppBar(title: const Text("Center")),
        body: ListView(
          padding: const EdgeInsets.all(12.0),
          children: const [
            ProfileCard(
              name: "Mausam Rayamajhi",
              subtitle: "A trendsetter",
              collectCount: "846",
              attentionCount: "51",
              trackCount: "267",
              couponsCount: "39",
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionItem(icon: Icons.account_balance_wallet, label: "Wallet"),
                ActionItem(icon: Icons.local_shipping, label: "Delivery"),
                ActionItem(icon: Icons.chat, label: "Message"),
                ActionItem(icon: Icons.store, label: "Service"),
              ],
            ),

            SizedBox(height: 20),

            SettingCard(
              title: "Address",
              subtitle: "Ensure your harvesting address",
              icon: Icons.location_on,
            ),
            SettingCard(
              title: "Privacy",
              subtitle: "System permission change",
              icon: Icons.lock,
            ),
            SettingCard(
              title: "General",
              subtitle: "Basic functional settings",
              icon: Icons.layers,
            ),
            SettingCard(
              title: "Notification",
              subtitle: "Take over the news in time",
              icon: Icons.notifications,
            ),
          ],
        ),
      ),
    );
  }
}
