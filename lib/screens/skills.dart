import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Skills', style: Theme.of(context).textTheme.headlineLarge),
          const SizedBox(height: 10),
          Text(
            'Technologies I work with',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50),
          // Skills grid
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: MediaQuery.of(context).size.width > 800 ? 4 : 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              _buildSkillCard(context, 'Flutter', 95, Icons.phone_iphone),
              _buildSkillCard(context, 'Dart', 90, Icons.code),
              _buildSkillCard(context, 'Firebase', 85, Icons.cloud),
              _buildSkillCard(context, 'React Native', 80, Icons.devices),
              _buildSkillCard(context, 'JavaScript', 85, Icons.javascript),
              _buildSkillCard(context, 'Node.js', 75, Icons.storage),
              _buildSkillCard(
                context,
                'UI/UX Design',
                80,
                Icons.design_services,
              ),
              _buildSkillCard(context, 'Git', 90, Icons.gite),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(
    BuildContext context,
    String skill,
    int percent,
    IconData icon,
  ) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Theme.of(context).primaryColor),
            const SizedBox(height: 15),
            Text(
              skill,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            LinearProgressIndicator(
              value: percent / 100,
              backgroundColor: Colors.grey[300],
              color: Theme.of(context).primaryColor,
              minHeight: 10,
              borderRadius: BorderRadius.circular(5),
            ),
            const SizedBox(height: 10),
            Text('$percent%', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
