import 'package:flutter/material.dart';

class Diabetes extends StatefulWidget {
  const Diabetes({super.key});

  @override
  State<Diabetes> createState() => _DiabetesState();
}

class _DiabetesState extends State<Diabetes> {
  final TextEditingController fastingbloodglucose = TextEditingController();
  final TextEditingController randombloodglucose = TextEditingController();
  final TextEditingController glycatedhemoglobin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: const Text(
          "تحليل سكر",
          style: TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(7.0)),
            addTextField(
                'Fasting Blood Glucose (سكر صايم)', fastingbloodglucose),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(Icons.person),
                  iconSize: 55.0,
                  color: Colors.black,
                ),
                (fastingbloodglucose.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : (double.parse(fastingbloodglucose.text) < 70
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : (double.parse(fastingbloodglucose.text) >= 70) &&
                                (double.parse(fastingbloodglucose.text) <= 99)
                            ? const Icon(
                                Icons.square,
                                color: Colors.green,
                                size: 55.0,
                              )
                            : (double.parse(fastingbloodglucose.text) >= 100) &&
                                    (double.parse(fastingbloodglucose.text) <=
                                        125)
                                ? const Icon(
                                    Icons.square,
                                    color: Colors.orange,
                                    size: 55.0,
                                  )
                                : const Icon(
                                    Icons.square,
                                    color: Color.fromARGB(255, 250, 2, 2),
                                    size: 55.0,
                                  )),
                (fastingbloodglucose.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(fastingbloodglucose.text) < 70)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(fastingbloodglucose.text) >= 70) &&
                                (int.parse(fastingbloodglucose.text) <= 99))
                            ? const Text(
                                textDirection: TextDirection.rtl,
                                "اتطمن\nقرايتك مثالية",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))
                            : ((double.parse(fastingbloodglucose.text) >=
                                        100) &&
                                    (double.parse(fastingbloodglucose.text) <=
                                        125))
                                ? const Text(
                                    textDirection: TextDirection.rtl,
                                    'خلي بالك\nدي بداية سكر',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold))
                                : const Text(
                                    textDirection: TextDirection.rtl,
                                    'انت عندك سكر\nمحتاج تشوف دكتور',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold))),
              ],
            ),
            const Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text('طمني   ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))
              ],
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            const Padding(padding: EdgeInsets.all(10.0)),
            addTextField('Random Blood Glucose (سكر فاطر)', randombloodglucose),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(Icons.person),
                  iconSize: 55.0,
                  color: Colors.black,
                ),
                (randombloodglucose.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(randombloodglucose.text) < 70)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(randombloodglucose.text) >= 70) &&
                                (double.parse(randombloodglucose.text) <= 199))
                            ? const Icon(
                                Icons.square,
                                color: Colors.green,
                                size: 55.0,
                              )
                            : const Icon(
                                Icons.square,
                                color: Colors.red,
                                size: 55.0,
                              )),
                (randombloodglucose.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(randombloodglucose.text) < 70)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(randombloodglucose.text) >= 70) &&
                                (double.parse(randombloodglucose.text) <= 199))
                            ? const Text(
                                textDirection: TextDirection.rtl,
                                "اتطمن\nقرايتك مثالية",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))
                            : const Text(
                                textDirection: TextDirection.rtl,
                                'انت عندك سكر\nمحتاج تشوف دكتور',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))),
              ],
            ),
            const Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text('طمني   ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))
              ],
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            addTextField(
                'Glycated Hemoglobin (سكر تراكمي)', glycatedhemoglobin),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(Icons.person),
                  iconSize: 55.0,
                  color: Colors.black,
                ),
                (glycatedhemoglobin.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : (double.parse(glycatedhemoglobin.text) < 4.5
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : (double.parse(glycatedhemoglobin.text) >= 4.5) &&
                                (double.parse(glycatedhemoglobin.text) <= 5.6)
                            ? const Icon(
                                Icons.square,
                                color: Colors.green,
                                size: 55.0,
                              )
                            : (double.parse(glycatedhemoglobin.text) >= 5.7) &&
                                    (double.parse(glycatedhemoglobin.text) <=
                                        6.4)
                                ? const Icon(
                                    Icons.square,
                                    color: Colors.orange,
                                    size: 55.0,
                                  )
                                : (double.parse(glycatedhemoglobin.text) >=
                                            6.5) &&
                                        (double.parse(
                                                glycatedhemoglobin.text) <=
                                            7)
                                    ? const Icon(
                                        Icons.square,
                                        color: Color.fromARGB(255, 136, 41, 34),
                                        size: 55.0,
                                      )
                                    : const Icon(
                                        Icons.square,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 55.0,
                                      )),
                (glycatedhemoglobin.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(glycatedhemoglobin.text) < 4.5)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(glycatedhemoglobin.text) >= 4.5) &&
                                (double.parse(glycatedhemoglobin.text) <= 5.6))
                            ? const Text(
                                textDirection: TextDirection.rtl,
                                "اتطمن\nقرايتك مثالية",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))
                            : ((double.parse(glycatedhemoglobin.text) >= 5.7) &&
                                    (double.parse(glycatedhemoglobin.text) <=
                                        6.4))
                                ? const Text(
                                    textDirection: TextDirection.rtl,
                                    'خلي بالك\nدي بداية سكر',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold))
                                : (double.parse(glycatedhemoglobin.text) >=
                                            6.5) &&
                                        (double.parse(
                                                glycatedhemoglobin.text) <=
                                            7)
                                    ? const Text(
                                        textDirection: TextDirection.rtl,
                                        'انت عندك سكر بس تقدر تلحقه\nمحتاج تروح لدكتور',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold))
                                    : const Text(
                                        textDirection: TextDirection.rtl,
                                        'انت عندك سكر\nمحتاج تشوف دكتور',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold))),
              ],
            ),
            const Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text('طمني   ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0))
              ],
            ),
          ],
        ),
      ),
      // endDrawer: const Drawer(),
    );
  }

  addTextField(String label, TextEditingController controllers) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: const BorderSide(color: Colors.blue, width: 0.5),
          ),
          labelText: label,
          labelStyle: const TextStyle(
              color: Colors.blue,
              fontSize: 20.0,
              fontWeight: FontWeight.normal)),
      maxLength: 5,
      keyboardType: TextInputType.number,
      controller: controllers,
    );
  }
}
