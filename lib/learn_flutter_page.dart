import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool? isCheckBox = false;
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(onPressed: (){debugPrint('yes');}, icon: Icon(Icons.info_outline),),],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/Tarun Srivastava.jpeg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(15.0),
              color: Colors.green,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Hello world',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Elevated button');
              },
              child: Text('Click'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.black,
              ),
              onPressed: () {
                debugPrint('Elevated button');
              },
              child: Text('Click'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Elevated button');
              },
              child: Text('Click'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('hey');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blueAccent,
                  ),
                  Text('Hello'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newbool) {
                setState(() {
                  isSwitch = newbool;
                });
              },
            ),
            Checkbox(
              value: isCheckBox,
              onChanged: (bool? newbool) {
                setState(() {
                  isCheckBox = newbool;
                });
              },
            ),
            Image.network('https://wallpaperaccess.com/full/1909531.jpg'),
          ],
        ),
      ),
    );
  }
}
