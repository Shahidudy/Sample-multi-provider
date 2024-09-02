import 'package:flutter/material.dart';
import 'package:multi_provider/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build from Here');
    final _homeProvider = Provider.of<HomeProvider>(context, listen: false);
    //listen : flase to avoid building from beginning
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //cunsumer to bild child widget only
            Consumer<HomeProvider>(
              builder: (context, value, child) => Text(
                value.num.toString(),
                style: TextStyle(fontSize: 100),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _homeProvider.icre();
              },
              child: Text('Press'),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'setting_page');
              },
              icon: Icon(
                Icons.move_up_sharp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
