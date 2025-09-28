import 'package:flutter/material.dart';
import '../widgets/app_logo.dart';

/// Info page showing app details, developer information, and features
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Flutter Practicals',
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            fontSize: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // App Logo
            const AppLogo(size: 100.0, showText: true),
            const SizedBox(height: 30.0),

            // App Description
            _buildSectionCard(
              context,
              'App Overview',
              Icons.info_outline,
              'Flutter Practicals is a comprehensive collection of 10 practical Flutter applications designed to demonstrate various Flutter concepts, from basic navigation to advanced features like API integration and state management.',
            ),

            const SizedBox(height: 20.0),

            // Developer Information
            _buildSectionCard(
              context,
              'Developer Information',
              Icons.person,
              'Developed by: 23AIML025 Harsh Kakadiya\n\nThis portfolio showcases practical implementations of Flutter development concepts learned through hands-on experience.',
            ),

            const SizedBox(height: 20.0),

            // Features List
            _buildFeaturesSection(context),

            const SizedBox(height: 20.0),

            // Technical Stack
            _buildTechStackSection(context),

            const SizedBox(height: 20.0),

            // App Version
            _buildSectionCard(
              context,
              'App Information',
              Icons.phone_android,
              'Version: 1.0.0\nBuild: 1\nFlutter SDK: 3.8.0+\nTarget Platform: Android, iOS, Web, Windows, macOS, Linux',
            ),

            const SizedBox(height: 30.0),

            // Contact/Footer
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.code,
                    size: 40.0,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 12.0),
                  Text(
                    'Built with Flutter',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'A showcase of practical Flutter development skills',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20.0),

            // Close Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                label: const Text('Close'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard(
    BuildContext context,
    String title,
    IconData icon,
    String content,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
                color: Theme.of(context).colorScheme.primary,
                size: 24.0,
              ),
              const SizedBox(width: 12.0),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection(BuildContext context) {
    final List<String> features = [
      'Multi-Screen Navigation with data passing',
      'Temperature conversion with real-time validation',
      'Dynamic To-Do list with state management',
      'Form validation and user registration',
      'CRUD operations for student records',
      'Persistent storage with SharedPreferences',
      'Product catalog with GridView layout',
      'REST API integration with FutureBuilder',
      'Authentication with session management',
      'App deployment and versioning guide',
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.star,
                color: Theme.of(context).colorScheme.primary,
                size: 24.0,
              ),
              const SizedBox(width: 12.0),
              Text(
                'Key Features',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          ...features
              .map<Widget>(
                (String feature) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.check_circle,
                        size: 16.0,
                        color: Colors.green.shade600,
                      ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Text(
                          feature,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  Widget _buildTechStackSection(BuildContext context) {
    final List<String> technologies = [
      'Flutter Framework',
      'Dart Programming Language',
      'Material Design 3',
      'Google Fonts',
      'SharedPreferences',
      'HTTP Package',
      'Animations Package',
      'State Management (setState)',
      'Navigation & Routing',
      'Form Validation',
      'FutureBuilder & Async Programming',
      'GridView & ListView',
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.build,
                color: Theme.of(context).colorScheme.primary,
                size: 24.0,
              ),
              const SizedBox(width: 12.0),
              Text(
                'Technical Stack',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: technologies
                .map<Widget>(
                  (String tech) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withOpacity(0.3),
                      ),
                    ),
                    child: Text(
                      tech,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
