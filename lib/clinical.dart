import 'package:flutter/material.dart';

class Clinical extends StatefulWidget {
  const Clinical({super.key});

  @override
  State<Clinical> createState() => _ClinicalState();
}

class _ClinicalState extends State<Clinical> {
  final TextEditingController creatinine = TextEditingController();
  final TextEditingController bloodurea = TextEditingController();
  final TextEditingController bun = TextEditingController();
  final TextEditingController alt = TextEditingController();
  final TextEditingController tsh = TextEditingController();
  final TextEditingController totalcalcium = TextEditingController();
  final TextEditingController ionisedcalcium = TextEditingController();
  final TextEditingController iron = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: const Text(
          "تحاليل معمل",
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
            addTextField('Creatinine', creatinine),
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
                (creatinine.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(creatinine.text) < 0.6)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(creatinine.text) >= 0.6) &&
                                (double.parse(creatinine.text) <= 1.3))
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
                (creatinine.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(creatinine.text) < 0.6)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(creatinine.text) >= 0.6) &&
                                (double.parse(creatinine.text) <= 1.3))
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
            addTextField('Blood Urea', bloodurea),
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
                (bloodurea.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(bloodurea.text) < 19)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(bloodurea.text) >= 19) &&
                                (double.parse(bloodurea.text) <= 49))
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
                (bloodurea.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(bloodurea.text) < 19)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(bloodurea.text) >= 19) &&
                                (double.parse(bloodurea.text) <= 49))
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
            addTextField('BUN', bun),
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
                (bun.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(bun.text) < 8)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(bun.text) >= 8) &&
                                (double.parse(bun.text) <= 23))
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
                (bun.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(bun.text) < 8)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(bun.text) >= 8) &&
                                (double.parse(bun.text) <= 23))
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
            addTextField('TSH', tsh),
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
                (tsh.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(tsh.text) < 0.3)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(tsh.text) >= 0.3) &&
                                (double.parse(tsh.text) <= 5))
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
                (tsh.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(tsh.text) < 0.3)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(tsh.text) >= 0.3) &&
                                (double.parse(tsh.text) <= 5))
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
            addTextField('Total Calcium', totalcalcium),
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
                (totalcalcium.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(totalcalcium.text) < 9)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(totalcalcium.text) >= 9) &&
                                (double.parse(totalcalcium.text) <= 11))
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
                (totalcalcium.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(totalcalcium.text) < 9)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(totalcalcium.text) >= 9) &&
                                (double.parse(totalcalcium.text) <= 11))
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
            addTextField('Ionised Calcium', ionisedcalcium),
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
                (ionisedcalcium.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(ionisedcalcium.text) < 1.1)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(ionisedcalcium.text) >= 1.1) &&
                                (double.parse(ionisedcalcium.text) <= 1.5))
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
                (ionisedcalcium.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(ionisedcalcium.text) < 1.1)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(ionisedcalcium.text) >= 1.1) &&
                                (double.parse(ionisedcalcium.text) <= 1.5))
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
            addTextField('Iron', iron),
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
                (iron.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(iron.text) < 50)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(iron.text) >= 50) &&
                                (double.parse(iron.text) <= 120))
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
                (iron.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(iron.text) < 50)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(iron.text) >= 50) &&
                                (double.parse(iron.text) <= 120))
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
            addTextField('ALT', alt),
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
                (alt.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(alt.text) < 37)
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
                (alt.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(alt.text) < 37)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            "اتطمن\nقرايتك مثالية",
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اعلي من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold))),
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
