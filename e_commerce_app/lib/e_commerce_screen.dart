import 'package:flutter/material.dart';
import 'widget/support.dart'; // Ensure this exists and is properly implemented

class ECommerceScreen extends StatefulWidget {
  const ECommerceScreen({super.key});

  @override
  State<ECommerceScreen> createState() => _ECommerceScreenState();
}

class _ECommerceScreenState extends State<ECommerceScreen> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Changer',
      theme: ThemeData.light(), // Define light theme
      darkTheme: ThemeData.dark(), // Define dark theme
      themeMode: _themeMode, // Manage theme mode
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/ecom-lgo.png', // Ensure this image is in your assets folder
                fit: BoxFit.fill,
                height: 32, // Adjust the height of the logo as needed
              ),
              const SizedBox(width: 10), // Add space between the logo and title
              const Text('E-Commerce App'),
            ],
          ),
          backgroundColor: Colors.blueGrey,
          automaticallyImplyLeading: false, // Removes back arrow if needed
          actions: [
            PopupMenuButton<ThemeMode>(
              icon: const Icon(
                Icons.color_lens_outlined,
                color: Colors.yellowAccent,
              ),
              onSelected: (ThemeMode selectedTheme) {
                setState(() {
                  _themeMode = selectedTheme;
                });
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: ThemeMode.system,
                    child: Text('System Default'),
                  ),
                  const PopupMenuItem(
                    value: ThemeMode.light,
                    child: Text('Light Theme'),
                  ),
                  const PopupMenuItem(
                    value: ThemeMode.dark,
                    child: Text('Dark Theme'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20.0), // Customize the corner radius
                      child: Image.asset(
                        "assets/ankit.jpg", // Ensure the correct path of the image is mentioned in pubspec.yaml
                        width: 50, // Customize the width if needed
                        height: 50, // Customize the height if needed
                        fit: BoxFit.cover, // Adjust the image fit as needed
                      ),
                    ),
                    const SizedBox(width: 10), // Space between image and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey, Ankit",
                          style: AppWidget
                              .boldTextFieldStyle(), // Ensure this style method is implemented correctly in support.dart
                        ),
                        const Text(
                          "Good Morning",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Static Search Bar
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for products...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onChanged: (value) {
                    // Since this is a static search bar, no dynamic search functionality is added here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}