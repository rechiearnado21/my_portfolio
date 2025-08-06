import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 40),
      child: Column(
        children: [
          Text(
            'Get In Touch',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            'Let\'s build something amazing together',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50),
          Row(
            children: [
              // Contact form
              Expanded(
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Your Name',
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Email Address',
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Subject',
                            prefixIcon: Icon(Icons.subject),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          maxLines: 5,
                          decoration: const InputDecoration(
                            labelText: 'Message',
                            alignLabelWithHint: true,
                          ),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 15,
                            ),
                          ),
                          child: const Text('Send Message'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 50),
              // Contact info
              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactInfo(
                      context,
                      Icons.email,
                      'Email',
                      'contact@yourportfolio.com',
                      'mailto:contact@yourportfolio.com',
                    ),
                    const SizedBox(height: 30),
                    _buildContactInfo(
                      context,
                      Icons.phone,
                      'Phone',
                      '+1 (123) 456-7890',
                      'tel:+11234567890',
                    ),
                    const SizedBox(height: 30),
                    _buildContactInfo(
                      context,
                      Icons.location_on,
                      'Location',
                      'San Francisco, CA',
                      'https://maps.google.com/?q=San+Francisco',
                    ),
                    const SizedBox(height: 50),
                    Text(
                      'Connect with me',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook),
                          onPressed: () =>
                              _launchURL('https://facebook.com/yourprofile'),
                        ),
                        IconButton(
                          icon: const Icon(Icons.link),
                          onPressed: () =>
                              _launchURL('https://linkedin.com/in/yourprofile'),
                        ),
                        IconButton(
                          icon: const Icon(Icons.code),
                          onPressed: () =>
                              _launchURL('https://github.com/yourprofile'),
                        ),
                        IconButton(
                          icon: const Icon(Icons.telegram),
                          onPressed: () =>
                              _launchURL('https://t.me/yourprofile'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactInfo(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
    String url,
  ) {
    return InkWell(
      onTap: () => _launchURL(url),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Theme.of(context).primaryColor),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyMedium),
              Text(
                subtitle,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}
