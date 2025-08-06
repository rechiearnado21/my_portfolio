import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/experience.dart';
import 'package:portfolio/screens/footer.dart';
import 'package:portfolio/screens/header_section.dart';
import 'package:portfolio/screens/project_sections.dart';
import 'package:portfolio/screens/skills.dart';
import 'package:portfolio/screens/theme_provider.dart';
import 'package:provider/provider.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  final List<Widget> sections = [
    const HeaderSection(),
    const AboutSection(),
    const SkillsSection(),
    const ExperienceSection(),
    const ProjectsSection(),
    const ContactSection(),
    const FooterSection(),
  ];

  void scrollTo(int index) {
    itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEV PORTFOLIO'),
        actions: [
          TextButton(onPressed: () => scrollTo(0), child: const Text('Home')),
          TextButton(onPressed: () => scrollTo(1), child: const Text('About')),
          TextButton(onPressed: () => scrollTo(2), child: const Text('Skills')),
          TextButton(
            onPressed: () => scrollTo(3),
            child: const Text('Experience'),
          ),
          TextButton(
            onPressed: () => scrollTo(4),
            child: const Text('Projects'),
          ),
          TextButton(
            onPressed: () => scrollTo(5),
            child: const Text('Contact'),
          ),
          IconButton(
            icon: Icon(
              Provider.of<ThemeProvider>(context).isDarkMode
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
            onPressed: () =>
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme(
                  !Provider.of<ThemeProvider>(
                    context,
                    listen: false,
                  ).isDarkMode,
                ),
          ),
        ],
      ),
      body: ScrollablePositionedList.builder(
        itemCount: sections.length,
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
        itemBuilder: (context, index) => sections[index],
      ),
    );
  }
}
