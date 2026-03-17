import 'package:flutter/material.dart';

class Lab6App extends StatefulWidget {
  const Lab6App({super.key});

  @override
  State<Lab6App> createState() => _Lab6AppState();
}

class _Lab6AppState extends State<Lab6App> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // 🔹 Theme switching
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,

      // 🔹 LIGHT THEME (✅ FIXED brightness)
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light, // ✅ FIX HERE
        ),

        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
        ),

         elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 28,
            fontStyle: FontStyle.italic,
            color: Colors.indigo,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            height: 1.5,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.black54,
            height: 1.6,
          ),
        ),
      ),

      // 🔹 DARK THEME (✅ FIXED brightness)
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark, // ✅ FIX HERE
        ),

        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
        ),


        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 28,
            fontStyle: FontStyle.italic,
            color: Colors.amber,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.white,
            height: 1.5,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.white70,
            height: 1.6,
          ),
        ),
      ),

      // 🔹 HOME UI
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Theme Toggle App'),
              actions: [
                IconButton(
                  icon: Icon(
                    isDarkTheme ? Icons.dark_mode : Icons.light_mode,
                  ),
                  onPressed: () {
                    setState(() {
                      isDarkTheme = !isDarkTheme; // ✅ cleaner
                    });
                  },
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Theme Data Text Example',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'This paragraph demonstrates theme switching using ThemeData.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Themed Card',
                              style:
                                  Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'This card uses CardTheme.',
                              style:
                                  Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Elevated Button'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Current theme: ${isDarkTheme ? 'Dark' : 'Light'}',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}