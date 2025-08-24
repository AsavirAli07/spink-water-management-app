
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final phoneCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spink - Water Management')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(controller: phoneCtrl, decoration: InputDecoration(labelText: 'Phone')),
          TextField(controller: passCtrl, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
          SizedBox(height: 16),
          ElevatedButton(onPressed: () {
            // simple routing: 'owner' -> owner screen, else driver
            if (phoneCtrl.text.trim() == 'owner') {
              Navigator.push(context, MaterialPageRoute(builder: (_) => OwnerHome()));
            } else {
              Navigator.push(context, MaterialPageRoute(builder: (_) => DriverHome()));
            }
          }, child: Text('Login')),
        ]),
      ),
    );
  }
}

class OwnerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Owner Dashboard')), body: Center(child: Text('Owner area')));
  }
}

class DriverHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Driver Dashboard')), body: Center(child: Text('Driver area')));
  }
}
