import 'package:flutter/material.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk Story (Horizontal)
    final List<Map<String, String>> stories = [
      {'name': 'ckayy', 'image': 'https://picsum.photos/200?10'},
      {'name': 'Story 2', 'image': 'https://picsum.photos/200?11'},
      {'name': 'Story 3', 'image': 'https://picsum.photos/200?12'},
      {'name': 'Story 4', 'image': 'https://picsum.photos/200?13'},
      {'name': 'Story 5', 'image': 'https://picsum.photos/200?14'},
    ];

    // Data dummy untuk Postingan Feed (Vertical)
    final List<Map<String, String>> posts = [
      {
        'username': 'user_1',
        'location': 'Bandung, Indonesia',
        'avatar': 'https://picsum.photos/200?20',
        'postImage': 'https://picsum.photos/600?30',
      },
      {
        'username': 'user_2',
        'avatar': 'https://picsum.photos/200?21',
        'postImage': 'https://picsum.photos/600?31',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Bagian 1: List Story (Horizontal di atas)
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                final story = stories[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: const LinearGradient(
                            colors: [Colors.purple, Colors.orange, Colors.yellow],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(story['image']!),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        story['name']!,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1),

          // Bagian 2: List Postingan Feed (Vertical ke bawah)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), // Agar menyatu dengan ListView utama
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Postingan (Avatar, Username, Lokasi, Titik Tiga)
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(post['avatar']!),
                    ),
                    title: Text(
                      post['username']!,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: Text(
                      post['location']!,
                      style: const TextStyle(fontSize: 12),
                    ),
                    trailing: const Icon(Icons.more_vert),
                  ),

                  // Gambar Utama Postingan
                  Image.network(
                    post['postImage']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 350,
                  ),

                  // Tombol Aksi (Like, Comment, Bookmark)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.favorite_border, size: 28),
                            SizedBox(width: 15),
                            Icon(Icons.chat_bubble_outline, size: 26),
                            SizedBox(width: 15),
                            Icon(Icons.send_outlined, size: 26),
                          ],
                        ),
                        const Icon(Icons.bookmark_border, size: 28),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}