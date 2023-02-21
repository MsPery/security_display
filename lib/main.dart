import 'package:flutter/material.dart';

void main() => runApp(SecurityApp());

class SecurityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Security App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: SecurityList(),
      ),
    );
  }
}

class SecurityList extends StatelessWidget {
  final List<Map<String, String>> securityData = [
    {
      'title': 'Account Password',
      'subtitle': 'Change Password Regularly',
      'date': '2023-01-01'
    },
    {
      'title': 'Two Factor Authentication',
      'subtitle': 'Enable 2FA for added security',
      'date': '2023-01-05'
    },
    {
      'title': 'Antivirus Software',
      'subtitle': 'Install and Keep Updated Antivirus',
      'date': '2023-02-10'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Security Tips',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
        ),
        for (var data in securityData)
          ListTile(
            title: Text(data['title']!),
            subtitle: Text(data['subtitle']!),
            trailing: Text(data['date']!),
          ),
        DataTable(
          columns: [
            DataColumn(label: Text('Security Measures')),
            DataColumn(label: Text('Details')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Password')),
              DataCell(Text('Use strong password and change regularly')),
            ]),
            DataRow(cells: [
              DataCell(Text('Two Factor Authentication')),
              DataCell(Text('Enable 2FA for added security')),
            ]),
            DataRow(cells: [
              DataCell(Text('Antivirus Software')),
              DataCell(Text('Install and Keep Updated Antivirus')),
            ]),
          ],
        ),
      ],
    );
  }
}