import 'package:flutter/material.dart';
import 'package:multi_provider/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build');

    //need to provide : Listen false, otherwise it will build fully even there is Consumer..
    final setPro = Provider.of<SettingProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Setting Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //counsumer widget for build next widget only, mean child
            Consumer<SettingProvider>(
              builder: (context, value, child) => Text(
                value.num.toString(),
                style: TextStyle(fontSize: 100),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setPro.incWith2();
              },
              child: Text(
                'Click',
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'home_page');
                },
                icon: Icon(Icons.backpack))
          ],
        ),
      ),
    );
  }
}
