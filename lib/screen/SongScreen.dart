import 'package:flutter/material.dart';

class SongsScreen extends StatefulWidget {
  const SongsScreen({super.key});

  @override
  State<SongsScreen> createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  int? _playingIndex;

  final List<Map<String, dynamic>> _songs = const [
    {
      'title': 'Humpback Song',
      'artist': 'Humpback Whale',
      'duration': '4:32',
      'region': 'North Pacific',
    },
    {
      'title': 'Deep Ocean Call',
      'artist': 'Blue Whale',
      'duration': '2:18',
      'region': 'Antarctic',
    },
    {
      'title': 'Orca Pod Calls',
      'artist': 'Orca',
      'duration': '3:55',
      'region': 'North Atlantic',
    },
    {
      'title': 'Beluga Chirps',
      'artist': 'Beluga Whale',
      'duration': '1:47',
      'region': 'Arctic',
    },
    {
      'title': 'Sperm Whale Clicks',
      'artist': 'Sperm Whale',
      'duration': '5:10',
      'region': 'Deep Pacific',
    },
    {
      'title': 'Minke Whale Thump',
      'artist': 'Minke Whale',
      'duration': '2:03',
      'region': 'Southern Ocean',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Whale Songs',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Listen to the sounds of the ocean',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 20),

          // Now playing card
          if (_playingIndex != null) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFABD1C6), Color(0xFF80B4A8)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(Icons.graphic_eq, color: Colors.white, size: 36),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Now Playing',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          _songs[_playingIndex!]['title'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          _songs[_playingIndex!]['artist'] as String,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.stop_circle_outlined,
                        color: Colors.white, size: 32),
                    onPressed: () {
                      setState(() => _playingIndex = null);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],

          const Text(
            'All Tracks',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),

          // Song list
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _songs.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (context, index) {
              final song = _songs[index];
              final isPlaying = _playingIndex == index;

              return ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                leading: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: isPlaying
                        ? const Color(0xFFABD1C6)
                        : const Color(0xFFABD1C6).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    isPlaying ? Icons.graphic_eq : Icons.music_note,
                    color: isPlaying ? Colors.white : const Color(0xFFABD1C6),
                    size: 22,
                  ),
                ),
                title: Text(
                  song['title'] as String,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: isPlaying ? const Color(0xFF4A9E8A) : null,
                  ),
                ),
                subtitle: Text(
                  '${song['artist']}  ·  ${song['region']}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      song['duration'] as String,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[500],
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: Icon(
                        isPlaying
                            ? Icons.pause_circle_filled
                            : Icons.play_circle_fill,
                        color: const Color(0xFFABD1C6),
                        size: 32,
                      ),
                      onPressed: () {
                        setState(() {
                          _playingIndex = isPlaying ? null : index;
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}