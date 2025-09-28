import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';
import 'widgets/app_logo.dart';
import 'pages/info_page.dart';

// Import all practical files
import 'practical1_navigation.dart';
import 'practical2_temperature.dart';
import 'practical3_todo.dart';
import 'practical4_registration.dart';
import 'practical5_student_records.dart';
import 'practical6_notes.dart';
import 'practical7_product_catalog.dart';
import 'practical8_api_data.dart';
import 'practical9_login_auth.dart';
import 'practical10_deployment.dart';

/// Data model for a practical project.
class Practical {
  final int id;
  final String name;
  final String description;
  final List<String> keyFeatures;
  final List<String> technicalStack;
  final String problemDefinition;
  final Widget Function() appBuilder;
  final IconData icon;
  final Color accentColor;

  Practical({
    required this.id,
    required this.name,
    required this.description,
    required this.keyFeatures,
    required this.technicalStack,
    required this.problemDefinition,
    required this.appBuilder,
    required this.icon,
    required this.accentColor,
  });
}

/// List of all practical projects with their details.
final List<Practical> practicals = <Practical>[
  Practical(
    id: 1,
    name: 'Multi-Screen Navigation',
    description:
        'A basic mobile application demonstrating navigation between multiple screens (Splash, Login, Dashboard, Profile) and passing data between them.',
    keyFeatures: <String>[
      'Splash screen with a timer',
      'User login screen with input validation',
      'Dashboard screen displaying user-specific data',
      'Data passing between login and dashboard screens',
      'Profile page showcasing user details',
    ],
    technicalStack: <String>[
      'Flutter Navigator',
      'TextEditingController',
      'StatefulWidget for managing form state',
      'MaterialPageRoute',
    ],
    problemDefinition:
        'You are building a mobile application where users navigate through multiple screens like login, dashboard, and profile. Create a basic multi-screen Flutter app with navigation, passing data between pages.',
    appBuilder: () => const Practical1SplashScreen(),
    icon: Icons.navigation,
    accentColor: Colors.deepPurple,
  ),
  Practical(
    id: 2,
    name: 'Temperature Converter App',
    description:
        'A mobile application to convert temperatures between Celsius and Fahrenheit using Dart functions and input widgets, demonstrating basic UI updates.',
    keyFeatures: <String>[
      'Input validation for temperature values',
      'Conversion between Celsius and Fahrenheit',
      'Dynamic UI update on conversion',
      'Clear input button',
    ],
    technicalStack: <String>[
      'Dart functions',
      'TextFormField',
      'StatefulWidget for managing input and output',
      'InputDecoration',
    ],
    problemDefinition:
        'Develop a temperature converter app using Dart functions and input widgets.',
    appBuilder: () => const Practical2TemperatureConverterApp(),
    icon: Icons.thermostat,
    accentColor: Colors.blueGrey,
  ),
  Practical(
    id: 3,
    name: 'Dynamic To-Do App (setState)',
    description:
        'A dynamic To-Do list application allowing users to add, mark as complete, and delete tasks, demonstrating state management with setState and ListView.builder.',
    keyFeatures: <String>[
      'Add new tasks dynamically',
      'Mark tasks as completed/uncompleted',
      'Delete tasks',
      'Dynamic list management with ListView.builder',
      'In-memory storage for tasks',
    ],
    technicalStack: <String>[
      'StatefulWidget',
      'setState',
      'ListView.builder',
      'TextEditingController',
      'ListTile',
      'Checkbox',
    ],
    problemDefinition:
        'Create a dynamic TODO app using State Management (setState) and ListView.builder.',
    appBuilder: () => const Practical3TodoApp(),
    icon: Icons.assignment_turned_in,
    accentColor: Colors.lightGreen,
  ),
  Practical(
    id: 4,
    name: 'Form-based Registration App',
    description:
        'A user registration form demonstrating robust input validation using TextFormField and GlobalKey for managing form state.',
    keyFeatures: <String>[
      'Email, password, and confirm password fields',
      'Real-time input validation',
      'Form submission handling',
      'Displaying validation messages for various conditions',
      'Clear form button',
    ],
    technicalStack: <String>[
      'Form',
      'TextFormField',
      'GlobalKey<FormState>',
      'InputDecoration',
      'RegExp for email validation',
    ],
    problemDefinition:
        'Design a Form-based Registration App with validation using TextFormField.',
    appBuilder: () => const Practical4RegistrationApp(),
    icon: Icons.app_registration,
    accentColor: Colors.indigoAccent,
  ),
  Practical(
    id: 5,
    name: 'Student Records App (CRUD)',
    description:
        'A basic student records management application demonstrating Create, Read, Update, and Delete (CRUD) operations with in-memory data storage (simulating a local database).',
    keyFeatures: <String>[
      'Add new student records (Name, ID)',
      'View all student records in a list',
      'Edit existing student records',
      'Delete student records',
      'Interactive dialogs for add/edit operations',
    ],
    technicalStack: <String>[
      'StatefulWidget',
      'ListView.builder',
      'AlertDialog for input',
      'TextEditingController',
      'Data model class for Student',
    ],
    problemDefinition:
        'Build a Student Records App with CRUD operations using SQLite.',
    appBuilder: () => const Practical5StudentRecordsApp(),
    icon: Icons.school,
    accentColor: Colors.brown,
  ),
  Practical(
    id: 6,
    name: 'Notes App (Persistent Storage)',
    description:
        'A simple notes application demonstrating persistent storage using SharedPreferences to save and load notes across app launches.',
    keyFeatures: <String>[
      'Add new notes',
      'Edit existing notes',
      'Delete notes',
      'Save notes persistently across app launches',
      'Load saved notes on app start',
      'Display notes in a scrollable list',
    ],
    technicalStack: <String>[
      'SharedPreferences',
      'StatefulWidget',
      'ListView.builder',
      'TextEditingController',
      'FutureBuilder for async loading of notes',
    ],
    problemDefinition:
        'Create a Notes App with persistent storage using Shared Preferences.',
    appBuilder: () => const Practical6NotesApp(),
    icon: Icons.note_add,
    accentColor: Colors.deepOrange,
  ),
  Practical(
    id: 7,
    name: 'Product Catalog App',
    description:
        'An e-commerce inspired product catalog displaying various products with custom cards and images using GridView, emphasizing UI design and reusability.',
    keyFeatures: <String>[
      'Display products in a responsive grid layout',
      'Customizable product cards with name, price, and image',
      'Load images from a network placeholder URL',
      'Reusable product item widget',
      'Scrollable grid',
    ],
    technicalStack: <String>[
      'GridView.builder',
      'Card',
      'Image.network',
      'StatelessWidget for individual product items',
      'Column, Row for layout within cards',
    ],
    problemDefinition:
        'Design a Product Catalog App using GridView and custom cards with images.',
    appBuilder: () => const Practical7ProductCatalogApp(),
    icon: Icons.storefront,
    accentColor: Colors.cyan,
  ),
  Practical(
    id: 8,
    name: 'REST API Data Display (FutureBuilder)',
    description:
        'An application demonstrating how to fetch data from a simulated REST API using the http package and display it using FutureBuilder, handling loading, error, and data states.',
    keyFeatures: <String>[
      'Fetch data from a simulated REST API (e.g., user list/posts)',
      'Display loading indicator while data is being fetched',
      'Handle and display error states gracefully',
      'Render fetched data in a scrollable list',
      'Refresh data button',
    ],
    technicalStack: <String>[
      'FutureBuilder',
      'async/await',
      'http package for API calls',
      'dart:convert for JSON parsing',
      'ListView.builder',
    ],
    problemDefinition:
        'Connect to a REST API (e.g., weather, user data) and display using FutureBuilder.',
    appBuilder: () => const Practical8ApiDataApp(),
    icon: Icons.cloud_download,
    accentColor: Colors.purple,
  ),
  Practical(
    id: 9,
    name: 'API-based Login Authentication',
    description:
        'A login application simulating API-based credential checking and basic session handling using SharedPreferences to maintain a "logged-in" state.',
    keyFeatures: <String>[
      'User login form with username and password fields',
      'Input validation for login credentials',
      'Simulated API call for authentication (success/failure)',
      'Basic session management using SharedPreferences to remember login state',
      'Redirect on successful login to a dashboard',
      'Logout functionality',
    ],
    technicalStack: <String>[
      'TextFormField',
      'http package (simulated API)',
      'SharedPreferences for session',
      'Navigator.pushReplacement for controlled navigation',
      'GlobalKey<FormState>',
    ],
    problemDefinition:
        'Develop a Login Authentication App using API-based credential check and session handling.',
    appBuilder: () => const Practical9LoginAuthApp(),
    icon: Icons.lock_open,
    accentColor: Colors.blueGrey.shade700,
  ),
  Practical(
    id: 10,
    name: 'App Deployment & Versioning',
    description:
        'This practical focuses on the theoretical and practical steps for generating a signed APK for Android and preparing an app for deployment, including versioning concepts and publishing considerations.',
    keyFeatures: <String>[
      'Explanation of Android keystore and app signing process',
      'Steps for Flutter build process for release mode (Android)',
      'Concepts of app versioning (versionName, versionCode)',
      'Overview of Google Play Store deployment steps',
      'Key considerations for app store publishing',
    ],
    technicalStack: <String>[
      'Text widgets for documentation display',
      'Rich text formatting for clarity',
      'Basic UI layout for presenting information',
    ],
    problemDefinition:
        'Create and generate a Signed APK for deployment. Document steps to publish the app.',
    appBuilder: () => const Practical10DeploymentInfo(),
    icon: Icons.publish,
    accentColor: Colors.blueAccent,
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practicals Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple.shade700,
          secondary: Colors.teal.shade500,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black87,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
            .copyWith(
              headlineLarge: GoogleFonts.interTight(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              displayLarge: GoogleFonts.interTight(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
                height: 1.1,
              ),
              titleMedium: GoogleFonts.interTight(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
              bodyLarge: GoogleFonts.inter(
                fontSize: 16,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withAlpha((255 * 0.7).round()),
                height: 1.4,
              ),
              bodySmall: GoogleFonts.inter(
                fontSize: 12,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withAlpha((255 * 0.7).round()),
                height: 1.3,
              ),
              labelLarge: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
          titleTextStyle: GoogleFonts.interTight(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade600,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            elevation: 0,
          ),
        ),
        cardTheme: CardThemeData(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal,
            ),
            TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal,
            ),
            TargetPlatform.windows: SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal,
            ),
            TargetPlatform.macOS: SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal,
            ),
            TargetPlatform.linux: SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal,
            ),
          },
        ),
      ),
      home: const HomePage(),
    );
  }
}

/// Main Menu Screen displaying a list of practical projects.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        automaticallyImplyLeading: false,
        title: Text(
          'Flutter Portfolio',
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              icon: Icon(
                Icons.info_outline,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withAlpha((255 * 0.6).round()),
                size: 24,
              ),
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const InfoPage(),
                  ),
                );
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 25),
                const AppLogo(size: 80.0, showText: false),
                const SizedBox(height: 20),
                Text(
                  'Flutter Practicals',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Discover a collection of practical Flutter applications, designed to showcase practicals of 23AIML025 Harsh Kakadiya',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withAlpha((255 * 0.7).round()),
                  ),
                ),
                const SizedBox(height: 24),
                LayoutBuilder(
                  builder: (context, constraints) {
                    // Adaptive grid based on screen width
                    int crossAxisCount = 2;
                    double childAspectRatio = 0.85;

                    if (constraints.maxWidth > 1200) {
                      // Large desktop screens
                      crossAxisCount = 4;
                      childAspectRatio = 0.9;
                    } else if (constraints.maxWidth > 800) {
                      // Tablets and small desktop
                      crossAxisCount = 3;
                      childAspectRatio = 0.88;
                    } else if (constraints.maxWidth > 600) {
                      // Large phones in landscape
                      crossAxisCount = 2;
                      childAspectRatio = 0.85;
                    } else {
                      // Regular phones
                      crossAxisCount = 2;
                      childAspectRatio = 0.85;
                    }

                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: childAspectRatio,
                      ),
                      itemCount: practicals.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        final Practical practical = practicals[index];
                        return _PracticalGridCard(practical: practical);
                      },
                    );
                  },
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Widget for a single practical card in the HomePage GridView.
class _PracticalGridCard extends StatelessWidget {
  final Practical practical;
  const _PracticalGridCard({required this.practical});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            blurRadius: 8,
            color: Color(0x1A000000),
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push<void>(
            context,
            PageRouteBuilder<void>(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  PracticalDetailsPage(practical: practical),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;

                    var tween = Tween(
                      begin: begin,
                      end: end,
                    ).chain(CurveTween(curve: curve));

                    return SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    );
                  },
              transitionDuration: const Duration(milliseconds: 300),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: practical.accentColor.withAlpha((255 * 0.1).round()),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Icon(
                    practical.icon,
                    color: practical.accentColor,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Practical ${practical.id}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Text(
                  practical.name,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withAlpha((255 * 0.7).round()),
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push<void>(
                      context,
                      PageRouteBuilder<void>(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PracticalDetailsPage(practical: practical),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                              const begin = Offset(1.0, 0.0);
                              const end = Offset.zero;
                              const curve = Curves.easeInOut;

                              var tween = Tween(
                                begin: begin,
                                end: end,
                              ).chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                        transitionDuration: const Duration(milliseconds: 300),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: practical.accentColor.withAlpha(
                      (255 * 0.2).round(),
                    ),
                    foregroundColor: practical.accentColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                  ),
                  child: Text(
                    'View Details',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: practical.accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Practical Details Screen providing information about a specific project.
class PracticalDetailsPage extends StatelessWidget {
  final Practical practical;
  const PracticalDetailsPage({required this.practical, super.key});

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  Widget _buildFeatureOrTechItem(
    BuildContext context,
    IconData icon,
    String text,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon, size: 20.0, color: color),
          const SizedBox(width: 12.0),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practical ${practical.id}: ${practical.name}',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              practical.name,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              practical.description,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            _buildSectionTitle(context, 'Key Features:'),
            ...practical.keyFeatures.map<Widget>(
              (String feature) => _buildFeatureOrTechItem(
                context,
                Icons.check_circle_outline,
                feature,
                Colors.green.shade700,
              ),
            ),
            _buildSectionTitle(context, 'Technical Stack:'),
            ...practical.technicalStack.map<Widget>(
              (String tech) => _buildFeatureOrTechItem(
                context,
                Icons.data_object,
                tech,
                Theme.of(context).colorScheme.secondary,
              ),
            ),
            _buildSectionTitle(context, 'Problem Definition:'),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.primary.withAlpha((255 * 0.08).round()),
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withAlpha((255 * 0.2).round()),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.lightbulb_outlined,
                    size: 28.0,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Text(
                      practical.problemDefinition,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontStyle: FontStyle.italic,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => practical.appBuilder(),
                    ),
                  );
                },
                icon: const Icon(Icons.play_arrow_rounded, size: 28),
                label: Text(
                  'View Practical ${practical.id}',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: practical.accentColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 8.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
