import 'package:flutter/material.dart';

class Libids extends StatefulWidget {
  const Libids({super.key});

  @override
  State<Libids> createState() => _LibidsState();
}

class _LibidsState extends State<Libids> {
  final TextEditingController cholesterol = TextEditingController();
  final TextEditingController triglycerides = TextEditingController();
  final TextEditingController hdl = TextEditingController();
  final TextEditingController ldl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: const Text(
          "تحليل دهون",
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
            addTextField('Cholesterol', cholesterol),
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
                (cholesterol.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(cholesterol.text) < 200)
                        ? const Icon(
                            Icons.square,
                            color: Colors.green,
                            size: 55.0,
                          )
                        : ((double.parse(cholesterol.text) >= 200) &&
                                (double.parse(cholesterol.text) <= 239))
                            ? const Icon(
                                Icons.square,
                                color: Colors.orange,
                                size: 55.0,
                              )
                            : const Icon(
                                Icons.square,
                                color: Colors.red,
                                size: 55.0,
                              )),
                (cholesterol.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(cholesterol.text) < 200)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            "اتطمن\nقرايتك مثالية",
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(cholesterol.text) >= 200) &&
                                (double.parse(cholesterol.text) <= 239))
                            ? const Text(
                                textDirection: TextDirection.rtl,
                                'خلي بالك\nقرايتك اعلي شوية من الطبيعي',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))
                            : const Text(
                                textDirection: TextDirection.rtl,
                                'قرايتك اعلي من الطبيعي\nمحتاج تشوف دكتور',
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
            addTextField('Triglycerides', triglycerides),
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
                (triglycerides.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : (double.parse(triglycerides.text) < 150
                        ? const Icon(
                            Icons.square,
                            color: Colors.green,
                            size: 55.0,
                          )
                        : (double.parse(triglycerides.text) >= 150) &&
                                (double.parse(triglycerides.text) <= 199)
                            ? const Icon(
                                Icons.square,
                                color: Colors.orange,
                                size: 55.0,
                              )
                            : (double.parse(triglycerides.text) >= 200) &&
                                    (double.parse(triglycerides.text) <= 499)
                                ? const Icon(
                                    Icons.square,
                                    color: Color.fromARGB(255, 122, 45, 39),
                                    size: 55.0,
                                  )
                                : const Icon(
                                    Icons.square,
                                    color: Color.fromARGB(255, 250, 2, 2),
                                    size: 55.0,
                                  )),
                (triglycerides.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(triglycerides.text) < 150)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            "اتطمن\nقرايتك مثالية",
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(triglycerides.text) >= 150) &&
                                (int.parse(triglycerides.text) <= 199))
                            ? const Text(
                                textDirection: TextDirection.rtl,
                                'خلي بالك\nقرايتك اعلي شوية من الطبيعي',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))
                            : ((double.parse(triglycerides.text) >= 200) &&
                                    (double.parse(triglycerides.text) <= 499))
                                ? const Text(
                                    textDirection: TextDirection.rtl,
                                    'قرايتك عالية\nمحتاج تشوف دكتور',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold))
                                : const Text(
                                    textDirection: TextDirection.rtl,
                                    'قرايتك عالية جدا\nشوف دكتور ضروري',
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
            addTextField('HDL', hdl),
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
                (hdl.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(hdl.text) < 40)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(hdl.text) >= 40) &&
                                (double.parse(hdl.text) <= 60))
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
                (hdl.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(hdl.text) < 40)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(hdl.text) >= 40) &&
                                (double.parse(hdl.text) <= 60))
                            ? const Text(
                                textDirection: TextDirection.rtl,
                                "اتطمن\nقرايتك مثالية",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))
                            : const Text(
                                textDirection: TextDirection.rtl,
                                'قرايتك اعلي من الطبيعي\nمحتاج تشوف دكتور',
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
            addTextField('LDL', ldl),
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
                (ldl.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : (double.parse(ldl.text) < 100
                        ? const Icon(
                            Icons.square,
                            color: Colors.green,
                            size: 55.0,
                          )
                        : (double.parse(ldl.text) >= 100) &&
                                (double.parse(ldl.text) <= 129)
                            ? const Icon(
                                Icons.square,
                                color: Color.fromARGB(255, 151, 233, 154),
                                size: 55.0,
                              )
                            : (double.parse(ldl.text) >= 130) &&
                                    (double.parse(ldl.text) <= 159)
                                ? const Icon(
                                    Icons.square,
                                    color: Colors.orange,
                                    size: 55.0,
                                  )
                                : ((double.parse(ldl.text) >= 160) &&
                                        (double.parse(ldl.text) <= 189))
                                    ? const Icon(Icons.square,
                                        color: Colors.red, size: 55.0)
                                    : const Icon(Icons.square,
                                        color: Color.fromARGB(255, 255, 0, 0),
                                        size: 55.0)),
                (ldl.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : (double.parse(ldl.text) < 100
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            "اتطمن\nقرايتك مثالية",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ))
                        : (double.parse(ldl.text) >= 100) &&
                                (double.parse(ldl.text) <= 129)
                            ? const Text(
                                textDirection: TextDirection.rtl,
                                "اتطمن\nقرايتك مقبولة",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold))
                            : (double.parse(ldl.text) >= 130) &&
                                    (double.parse(ldl.text) <= 159)
                                ? const Text(
                                    textDirection: TextDirection.rtl,
                                    'خلي بالك\nقرايتك اعلي شوية من الطبيعي',
                                    style: TextStyle(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.bold))
                                : ((double.parse(ldl.text) >= 160) &&
                                        (double.parse(ldl.text) <= 189))
                                    ? const Text(
                                        textDirection: TextDirection.rtl,
                                        'قرايتك عالية\nمحتاج تشوف دكتور',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold))
                                    : const Text(
                                        textDirection: TextDirection.rtl,
                                        'قرايتك عالية جدا\nشوف دكتور ضروري',
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
