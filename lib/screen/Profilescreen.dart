import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  final List<Map<String, dynamic>> _stats = const [
    {'label': 'Species\nLearned', 'value': '12'},
    {'label': 'Songs\nPlayed', 'value': '34'},
    {'label': 'Day\nStreak', 'value': '7'},
  ];

  final List<Map<String, dynamic>> _menuItems = const [
    {'icon': Icons.bookmark_outline, 'label': 'Saved Articles'},
    {'icon': Icons.notifications_outlined, 'label': 'Notifications'},
    {'icon': Icons.language, 'label': 'Language'},
    {'icon': Icons.dark_mode_outlined, 'label': 'Dark Mode'},
    {'icon': Icons.help_outline, 'label': 'Help & Support'},
    {'icon': Icons.info_outline, 'label': 'About Whale App'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Profile',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // Avatar + name
          Center(
            child: Column(
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFABD1C6).withOpacity(0.2),
                    border: Border.all(
                      color: const Color(0xFFABD1C6),
                      width: 2.5,
                    ),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 48,
                    color: Color(0xFFABD1C6),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Ocean Explorer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'explorer@whale.app',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 14),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit, size: 16),
                  label: const Text('Edit Profile'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF4A9E8A),
                    side: const BorderSide(color: Color(0xFFABD1C6)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 28),

          // Stats row
          Row(
            children: _stats.map((stat) {
              return Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFABD1C6).withOpacity(0.12),
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: const Color(0xFFABD1C6).withOpacity(0.3),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        stat['value'] as String,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4A9E8A),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        stat['label'] as String,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey[600],
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),

          const SizedBox(height: 28),
          const Text(
            'Settings',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          // Menu items
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(14),
            ),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _menuItems.length,
              separatorBuilder: (_, __) =>
                  Divider(height: 1, color: Colors.grey.withOpacity(0.15)),
              itemBuilder: (context, index) {
                final item = _menuItems[index];
                return ListTile(
                  leading: Icon(
                    item['icon'] as IconData,
                    color: const Color(0xFFABD1C6),
                    size: 22,
                  ),
                  title: Text(
                    item['label'] as String,
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                    size: 20,
                  ),
                  onTap: () {},
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          // Logout
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.logout, size: 18, color: Colors.redAccent),
              label: const Text(
                'Log Out',
                style: TextStyle(color: Colors.redAccent),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.redAccent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}