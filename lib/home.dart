import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "الرئيسية",
          style: TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(children: <Widget>[
          const ListTile(
            title: Center(
              child: Text(
                "اهلا بيك في",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 77, 133),
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 400,
            width: 400,
            margin: const EdgeInsets.all(10.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25.0)),
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('assets/hh.png'))),
                ),
              ],
            ),
          ),
          const Divider(
            height: 5,
            thickness: 3,
          ),
          const Center(
            child: Text(
              textDirection: TextDirection.rtl,
              "ازاي تستخدم الابليكيشن؟",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text(
              textDirection: TextDirection.rtl,
              'الموضوع بسيط خالص. كل اللي عليك انك تختار اسم التحليل اللي عاوز تعرف نتيجته وتحط الرقم اللي موجود في ورقة التحليل اللي معاك قدام الاسم اللي شبهه في الابليكيشن و بعدها تضغط علي الايقونة اللي فوق كلمة طمني واحنا هنطمنك.',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
      // endDrawer: Drawer(
      //   shadowColor: Colors.black,
      //   width: 200.0,
      //   child: Column(
      //     textDirection: TextDirection.rtl,
      //     children: <Widget>[
      //       Container(height: 25.0),
      //       const Text(
      //         'قائمة التحاليل ',
      //         style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      //       ),
      //       const ListTile(
      //         trailing: Icon(Icons.bloodtype),
      //         title: Text(textDirection: TextDirection.rtl, 'دم'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
