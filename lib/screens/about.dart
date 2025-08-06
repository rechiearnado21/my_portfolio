import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Profile image
          Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.only(right: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: NetworkImage('https://via.placeholder.com/300'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // About text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Me',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  'I\'m a passionate mobile and web developer with 5+ years of experience creating high-performance applications.',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  'My journey in development started when I built my first Android app in college. Since then, I\'ve worked with startups and enterprises to deliver exceptional digital experiences.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 30),
                // Key points
                Column(
                  children: [
                    _buildAboutPoint(
                      context,
                      Icons.code,
                      '100+ Projects Completed',
                    ),
                    _buildAboutPoint(
                      context,
                      Icons.phone_android,
                      '50K+ App Downloads',
                    ),
                    _buildAboutPoint(context, Icons.star, '4.8 Average Rating'),
                    _buildAboutPoint(context, Icons.group, 'Satisfied Clients'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutPoint(BuildContext context, IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(icon, color: Theme.of(context).primaryColor),
          const SizedBox(width: 10),
          Text(text, style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
