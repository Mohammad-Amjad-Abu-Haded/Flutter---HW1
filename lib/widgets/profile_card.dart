import 'package:flutter/material.dart';
import 'package:hw1/widgets/profile_stat.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String subtitle;
  final String collectCount;
  final String attentionCount;
  final String trackCount;
  final String couponsCount;

  const ProfileCard({
    super.key,
    required this.name,
    required this.subtitle,
    required this.collectCount,
    required this.attentionCount,
    required this.trackCount,
    required this.couponsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(radius: 25, child: Text("M")),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(subtitle, style: const TextStyle(color: Colors.white70)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileStat(count: collectCount, label: "Collect"),
              ProfileStat(count: attentionCount, label: "Attention"),
              ProfileStat(count: trackCount, label: "Track"),
              ProfileStat(count: couponsCount, label: "Coupons"),
            ],
          ),
        ],
      ),
    );
  }
}
