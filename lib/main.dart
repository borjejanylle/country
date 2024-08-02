import 'package:flutter/material.dart';
import 'country_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CountryListScreen(),
    );
  }
}

class CountryListScreen extends StatelessWidget {
  const CountryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> countries = [
      {'flag': 'https://flagcdn.com/w320/ph.png', 'name': 'Philippines', 'language': 'Filipino', 'continent': 'Asia'},
      {'flag': 'https://flagcdn.com/w320/jp.png', 'name': 'Japan', 'language': 'Japanese', 'continent': 'Asia'},
      {'flag': 'https://flagcdn.com/w320/fr.png', 'name': 'France', 'language': 'French', 'continent': 'Europe'},
      {'flag': 'https://flagcdn.com/w320/mx.png', 'name': 'Mexico', 'language': 'Spanish', 'continent': 'North America'},
      {'flag': 'https://flagcdn.com/w320/gb.png', 'name': 'United Kingdom', 'language': 'English', 'continent': 'Europe'},
      {'flag': 'https://flagcdn.com/w320/kr.png', 'name': 'South Korea', 'language': 'Korean', 'continent': 'Asia'},
      {'flag': 'https://flagcdn.com/w320/br.png', 'name': 'Brazil', 'language': 'Portuguese', 'continent': 'South America'},
      {'flag': 'https://flagcdn.com/w320/de.png', 'name': 'Germany', 'language': 'German', 'continent': 'Europe'},
      {'flag': 'https://flagcdn.com/w320/cn.png', 'name': 'China', 'language': 'Mandarin', 'continent': 'Asia'},
      {'flag': 'https://flagcdn.com/w320/ca.png', 'name': 'Canada', 'language': 'English, French', 'continent': 'North America'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final country = countries[index];
          return CountryCard(
            flagUrl: country['flag']!,
            name: country['name']!,
            language: country['language']!,
            continent: country['continent']!,
          );
        },
      ),
    );
  }
}