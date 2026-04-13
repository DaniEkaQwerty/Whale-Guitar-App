import 'package:flutter/material.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  final List<Map<String, dynamic>> _topics = const [
    {
      'title': 'Blue Whale',
      'subtitle': 'The largest animal on Earth',
      'icon': Icons.water,
      'color': Color(0xFFABD1C6),
    },
    {
      'title': 'Humpback Whale',
      'subtitle': 'Known for their songs',
      'icon': Icons.music_note,
      'color': Color(0xFF90CAF9),
    },
    {
      'title': 'Orca',
      'subtitle': 'Intelligent apex predators',
      'icon': Icons.psychology,
      'color': Color(0xFFB39DDB),
    },
    {
      'title': 'Sperm Whale',
      'subtitle': 'Deepest diving whale',
      'icon': Icons.arrow_downward,
      'color': Color(0xFFFFCC80),
    },
    {
      'title': 'Migration',
      'subtitle': 'Long-distance whale journeys',
      'icon': Icons.map,
      'color': Color(0xFFA5D6A7),
    },
    {
      'title': 'Echolocation',
      'subtitle': 'How whales navigate',
      'icon': Icons.radio_button_checked,
      'color': Color(0xFFF48FB1),
    },
  ];

  // @override
  // Widget build(BuildContext context) {
  //   return ConstrainedBox(
  //     constraints: BoxConstraints(maxWidth: 800),
  //     child: Center(
  //       child: SingleChildScrollView(
  //         padding: const EdgeInsets.all(16),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             const Text(
  //               'Learn',
  //               style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
  //             ),
  //             const SizedBox(height: 4),
  //             Text(
  //               'Discover fascinating whale facts',
  //               style: TextStyle(fontSize: 15, color: Colors.grey[600]),
  //             ),
  //             const SizedBox(height: 20),

  //             // Featured banner
  //             Container(
  //               width: double.infinity,
  //               padding: const EdgeInsets.all(20),
  //               decoration: BoxDecoration(
  //                 color: const Color(0xFFABD1C6),
  //                 borderRadius: BorderRadius.circular(16),
  //               ),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   const Icon(
  //                     Icons.auto_stories,
  //                     size: 32,
  //                     color: Colors.white,
  //                   ),
  //                   const SizedBox(height: 10),
  //                   const Text(
  //                     'Did you know?',
  //                     style: TextStyle(
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.white,
  //                     ),
  //                   ),
  //                   const SizedBox(height: 6),
  //                   Text(
  //                     'A blue whale\'s heart is as big as a small car '
  //                     'and can be heard from 2 miles away.',
  //                     style: TextStyle(
  //                       fontSize: 14,
  //                       color: Colors.white.withOpacity(0.9),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),

  //             const SizedBox(height: 24),
  //             const Text(
  //               'Topics',
  //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  //             ),
  //             const SizedBox(height: 12),

  //             // Grid of topics
  //             GridView.builder(
  //               shrinkWrap: true,
  //               physics: const NeverScrollableScrollPhysics(),
  //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //                 crossAxisCount: 2,
  //                 crossAxisSpacing: 12,
  //                 mainAxisSpacing: 12,
  //                 childAspectRatio: 1.3,
  //               ),
  //               itemCount: _topics.length,
  //               itemBuilder: (context, index) {
  //                 final topic = _topics[index];
  //                 return GestureDetector(
  //                   onTap: () {
  //                     ScaffoldMessenger.of(context).showSnackBar(
  //                       SnackBar(
  //                         content: Text('Opening: ${topic['title']}'),
  //                         duration: const Duration(seconds: 1),
  //                       ),
  //                     );
  //                   },
  //                   child: Container(
  //                     padding: const EdgeInsets.all(14),
  //                     decoration: BoxDecoration(
  //                       color: (topic['color'] as Color).withOpacity(0.15),
  //                       borderRadius: BorderRadius.circular(14),
  //                       border: Border.all(
  //                         color: (topic['color'] as Color).withOpacity(0.4),
  //                       ),
  //                     ),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         Icon(
  //                           topic['icon'] as IconData,
  //                           color: topic['color'] as Color,
  //                           size: 28,
  //                         ),
  //                         const SizedBox(height: 8),
  //                         Text(
  //                           topic['title'] as String,
  //                           style: const TextStyle(
  //                             fontSize: 14,
  //                             fontWeight: FontWeight.bold,
  //                           ),
  //                         ),
  //                         const SizedBox(height: 2),
  //                         Text(
  //                           topic['subtitle'] as String,
  //                           style: TextStyle(
  //                             fontSize: 11,
  //                             color: Colors.grey[600],
  //                           ),
  //                           maxLines: 2,
  //                           overflow: TextOverflow.ellipsis,
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Learn',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'Discover fascinating whale facts',
              style: TextStyle(fontSize: 15, color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),

            // Featured banner
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFABD1C6),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.auto_stories, size: 32, color: Colors.white),
                  const SizedBox(height: 10),
                  const Text(
                    'Did you know?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'A blue whale\'s heart is as big as a small car '
                    'and can be heard from 2 miles away.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
            const Text(
              'Topics',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Grid of topics
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.3,
              ),
              itemCount: _topics.length,
              itemBuilder: (context, index) {
                final topic = _topics[index];
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Opening: ${topic['title']}'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: (topic['color'] as Color).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: (topic['color'] as Color).withOpacity(0.4),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          topic['icon'] as IconData,
                          color: topic['color'] as Color,
                          size: 28,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          topic['title'] as String,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          topic['subtitle'] as String,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[600],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ],
  );
}
}
