import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'Info'
          ),
          subtitle: Text(
              'Pesonale Info'
          ),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'Info'
          ),
          subtitle: Text(
              'Pesonale Info'
          ),
        ),
        ListTile(
          leading: IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/launch_screen');

    }, icon: Icon(Icons.logout)),
          title: Text(
            'Log Out'
          ),
          subtitle: Text(
              'Pesonale Info'
          ),
        ),
      ],
    );
  }
}
