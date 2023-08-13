import 'package:flutter/material.dart';
import 'package:navigation_flutter/screen_two.dart';

class ScreenOne extends StatefulWidget {
  static const String id = 'ScreenOne';
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      drawer: Drawer(

          //width: 200,
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.pexels.com/photo/woman-with-red-lips-3586091/'),
              ),
              accountName: Text('Ali Shan'),
              accountEmail: Text('jonah2114@gmail.com')),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, ScreenOne.id);
            },
          ),
          ListTile(
            leading: const Icon(Icons.set_meal),
            title: const Text('Meal'),
            onTap: () {
              Navigator.pushNamed(context, ScreenTwo.id);
            },
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          )
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ScreenTwo()));
                  },
                  child: const Text('Next')))
        ],
      ),
    );
  }
}
