import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured Projects',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            'Here are some of my notable app achievements',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: MediaQuery.of(context).size.width > 1000
                ? 3
                : MediaQuery.of(context).size.width > 600
                ? 2
                : 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              _buildProjectCard(
                context,
                'E-Commerce App',
                'Flutter, Firebase, Stripe',
                'assets/project1.jpg',
                '100K+ downloads on Play Store with 4.8 rating',
              ),
              _buildProjectCard(
                context,
                'Health Tracker',
                'Flutter, BLoC, Health API',
                'assets/project2.jpg',
                'Featured in Google Play Health category',
              ),
              _buildProjectCard(
                context,
                'Social Network',
                'React Native, Node.js, MongoDB',
                'assets/project3.jpg',
                '50K monthly active users',
              ),
              _buildProjectCard(
                context,
                'Task Manager',
                'Flutter, SQLite, GetX',
                'assets/project4.jpg',
                'Winner of local developer competition',
              ),
              _buildProjectCard(
                context,
                'Weather App',
                'Flutter, OpenWeather API',
                'assets/project5.jpg',
                'Published in multiple app stores',
              ),
              _buildProjectCard(
                context,
                'Finance Dashboard',
                'Flutter Web, Firebase',
                'assets/project6.jpg',
                'Enterprise solution for financial company',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(
    BuildContext context,
    String title,
    String tech,
    String image,
    String achievement,
  ) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://avatar.iran.liara.run/public/boy',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                tech,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(achievement, style: Theme.of(context).textTheme.bodyMedium),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: const Icon(Icons.link), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.code), onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
