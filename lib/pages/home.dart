import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  int _counter = 0;

  var mediaQsize, mediaQheight, mediaQwidth;

  void _incrementCounter() {
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    mediaQsize = MediaQuery.of(context).size;
    mediaQheight = mediaQsize.height;
    mediaQwidth = mediaQsize.width;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: const Text(
        //   'widget.title',
        //   style: TextStyle(color: Colors.black),
        // ),
        elevation: 0,
        leadingWidth: 100,
        leading: Stack(
          children: const [
            Positioned(
              top: 10,
              left: 40,
              child: CircleAvatar(
                radius: 19,
                child: Icon(
                  Icons.cases_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                // decoration: const Decoration(),
                backgroundColor: Colors.blue,
                radius: 19,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: Text('WO'),
                ),
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.pie_chart_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.qr_code_scanner_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],

        // leading: Chip(
        //   labelPadding: const EdgeInsets.all(2.0),
        //   avatar: const CircleAvatar(
        //     backgroundColor: Colors.white70,
        //     child: Text('O'),
        //   ),
        //   label: const Text(
        //     '',
        //     style: TextStyle(
        //       color: Colors.white,
        //     ),
        //   ),
        //   backgroundColor: Colors.amber,
        //   elevation: 6.0,
        //   shadowColor: Colors.grey[60],
        //   padding: const EdgeInsets.all(8.0),
        // ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const Text(
              'BALANCE',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'KSH. 0.00',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'AVAILABLE FULIZA: KSH 4,500',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.compare_arrows_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'SEND AND REQUEST',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: mediaQwidth * 0.09,
                ),
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.money,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'PAY',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: mediaQwidth * 0.1,
                ),
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.money_off,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'WITHDRAW',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                SizedBox(
                  width: mediaQwidth * 0.1,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[200],
                      child: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'AIRTIME',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'M-PESA STATEMENTS',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'SEE ALL',
                    // selectionColor: Colors.green,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        child: Text('EA'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('OTOMATIK SOLUTIONS LTD'),
                          Text('xxxxxxx'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('- KSH 55,000'),
                      Text('15 Jan 10:20AM'),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Text('SUGGESTED FOR YOU'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: 230,
                        height: 130,
                        color: Colors.green[100],
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.book,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 30,
                              child: Text('Advert'),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: 230,
                        height: 130,
                        color: Colors.green[100],
                        child: Stack(
                          children: const [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.book,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              right: 30,
                              child: Text('Advert'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Text('FREQUENT SERVICES'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
