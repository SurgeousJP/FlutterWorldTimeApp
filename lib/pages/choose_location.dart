import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // Widget Life Cycle initState() -> build() (called when the setState() ran) -> Dispose()

  void getData() async{

    // simulate network request for a user
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'yoshi';
    });

    // simulate network request for the bio given the username
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'vega, musician';
    });

    print('$username - $bio');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getData();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
