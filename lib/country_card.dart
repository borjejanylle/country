import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final String flagUrl;
  final String name;
  final String language;
  final String continent;

  const CountryCard({
    super.key,
    required this.flagUrl,
    required this.name,
    required this.language,
    required this.continent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Image.network(
          flagUrl,
          width: 50,
          fit: BoxFit.cover,
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('Language: $language\nContinent: $continent'),
      ),
    );
  }
}