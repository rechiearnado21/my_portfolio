import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Experience',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            'My professional journey',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50),
          // Timeline
          Column(
            children: [
              _buildTimelineItem(
                context,
                'Senior Flutter Developer',
                'Tech Solutions Inc.',
                '2021 - Present',
                'Leading mobile development team, architecting scalable apps, mentoring junior developers',
              ),
              _buildTimelineItem(
                context,
                'Mobile Developer',
                'Digital Creations Agency',
                '2019 - 2021',
                'Developed 15+ cross-platform apps for clients in various industries',
              ),
              _buildTimelineItem(
                context,
                'Junior Developer',
                'Startup Ventures',
                '2017 - 2019',
                'Built MVP apps for startups, learned agile development practices',
              ),
              _buildTimelineItem(
                context,
                'Computer Science Degree',
                'State University',
                '2013 - 2017',
                'Specialized in mobile development and human-computer interaction',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineItem(
    BuildContext context,
    String title,
    String company,
    String period,
    String description,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Timeline dot
          Container(
            width: 20,
            height: 20,
            margin: const EdgeInsets.only(top: 5, right: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).primaryColor,
            ),
          ),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      company,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(period, style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
