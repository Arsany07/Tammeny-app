import 'package:flutter/material.dart';

class Blood extends StatefulWidget {
  const Blood({super.key});

  @override
  State<Blood> createState() => _BloodState();
}

class _BloodState extends State<Blood> {
  final TextEditingController rbccount = TextEditingController();
  final TextEditingController hemoglobin = TextEditingController();
  final TextEditingController hct = TextEditingController();
  final TextEditingController mcv = TextEditingController();
  final TextEditingController mch = TextEditingController();
  final TextEditingController mchc = TextEditingController();
  final TextEditingController plateletcount = TextEditingController();
  final TextEditingController wbccount = TextEditingController();
  final TextEditingController rdw = TextEditingController();
  final TextEditingController pdw = TextEditingController();
  final TextEditingController mpv = TextEditingController();
  final TextEditingController neutrophils = TextEditingController();
  final TextEditingController lymphcytes = TextEditingController();
  final TextEditingController monocytes = TextEditingController();
  final TextEditingController eosinophils = TextEditingController();
  final TextEditingController basophils = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: const Text(
          "تحليل دم",
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
            const Center(
              child: Text(
                "Complete Blood Picture\n               (EDTA)",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            addTextField('Red Blood Cells Count', rbccount),
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
                (rbccount.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(rbccount.text) < 3.9)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(rbccount.text) >= 3.9) &&
                                (double.parse(rbccount.text) <= 5.1))
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
                (rbccount.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(rbccount.text) < 3.9)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(rbccount.text) >= 3.9) &&
                                (double.parse(rbccount.text) <= 5.1))
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
            addTextField('Hemoglobin', hemoglobin),
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
                (hemoglobin.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(hemoglobin.text) < 11.1)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(hemoglobin.text) >= 11.1) &&
                                (double.parse(hemoglobin.text) <= 14.1))
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
                (hemoglobin.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(hemoglobin.text) < 11.1)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(hemoglobin.text) >= 11.1) &&
                                (double.parse(hemoglobin.text) <= 14.1))
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
            addTextField('HCT', hct),
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
                (hct.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(hct.text) < 30)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(hct.text) >= 30) &&
                                (double.parse(hct.text) <= 38))
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
                (hct.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(hct.text) < 30)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(hct.text) >= 30) &&
                                (double.parse(hct.text) <= 38))
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
            addTextField('MCV', mcv),
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
                (mcv.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(mcv.text) < 72)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(mcv.text) >= 72) &&
                                (double.parse(mcv.text) <= 84))
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
                (mcv.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(mcv.text) < 72)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(mcv.text) >= 72) &&
                                (double.parse(mcv.text) <= 84))
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
            addTextField('MCH', mch),
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
                (mch.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(mch.text) < 25)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(mch.text) >= 25) &&
                                (double.parse(mch.text) <= 29))
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
                (mch.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(mch.text) < 25)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(mch.text) >= 25) &&
                                (double.parse(mch.text) <= 29))
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
            addTextField('MCHC', mchc),
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
                (mchc.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(mchc.text) < 32)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(mchc.text) >= 32) &&
                                (double.parse(mchc.text) <= 36))
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
                (mchc.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(mchc.text) < 32)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(mchc.text) >= 32) &&
                                (double.parse(mchc.text) <= 36))
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
            addTextField('Platelet Count', plateletcount),
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
                (plateletcount.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(plateletcount.text) < 200)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(plateletcount.text) >= 200) &&
                                (double.parse(plateletcount.text) <= 550))
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
                (plateletcount.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(plateletcount.text) < 200)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(plateletcount.text) >= 200) &&
                                (double.parse(plateletcount.text) <= 550))
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
            addTextField('White Blood Cells Count', wbccount),
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
                (wbccount.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(wbccount.text) < 6)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(wbccount.text) >= 6) &&
                                (double.parse(wbccount.text) <= 16))
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
                (wbccount.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(wbccount.text) < 6)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(wbccount.text) >= 6) &&
                                (double.parse(wbccount.text) <= 16))
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
            addTextField('RDW', rdw),
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
                (rdw.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(rdw.text) < 16)
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
                (rdw.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(rdw.text) < 16)
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
            const Padding(padding: EdgeInsets.all(10.0)),
            addTextField('PDW', pdw),
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
                (pdw.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(pdw.text) < 9)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(pdw.text) >= 9) &&
                                (double.parse(pdw.text) <= 14))
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
                (pdw.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(pdw.text) < 9)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(pdw.text) >= 9) &&
                                (double.parse(pdw.text) <= 14))
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
            addTextField('MPV', mpv),
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
                (mpv.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(mpv.text) < 7.4)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(mpv.text) >= 7.4) &&
                                (double.parse(mpv.text) <= 10.4))
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
                (mpv.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(mpv.text) < 7.4)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(mpv.text) >= 7.4) &&
                                (double.parse(mpv.text) <= 10.4))
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
            const Divider(
              indent: 10,
              endIndent: 10,
              thickness: 5.0,
              color: Colors.black,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            const Center(
                child: Text(
              "Differential White Cell Count",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            const Padding(padding: EdgeInsets.all(10.0)),
            addTextField('Neutrophils', neutrophils),
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
                (neutrophils.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(neutrophils.text) < 1)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(neutrophils.text) >= 1) &&
                                (double.parse(neutrophils.text) <= 7))
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
                (neutrophils.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(neutrophils.text) < 1)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(neutrophils.text) >= 1) &&
                                (double.parse(neutrophils.text) <= 7))
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
            addTextField('Lymphcytes', lymphcytes),
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
                (lymphcytes.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(lymphcytes.text) < 3.5)
                        ? const Icon(
                            Icons.square,
                            color: Colors.red,
                            size: 55.0,
                          )
                        : ((double.parse(lymphcytes.text) >= 3.5) &&
                                (double.parse(lymphcytes.text) <= 11))
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
                (lymphcytes.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(lymphcytes.text) < 3.5)
                        ? const Text(
                            textDirection: TextDirection.rtl,
                            'قرايتك اقل من الطبيعي\nمحتاج تشوف دكتور',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
                          )
                        : ((double.parse(lymphcytes.text) >= 3.5) &&
                                (double.parse(lymphcytes.text) <= 11))
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
            addTextField('Monocytes', monocytes),
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
                (monocytes.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(monocytes.text) < 1)
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
                (monocytes.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(monocytes.text) < 1)
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
            const Padding(padding: EdgeInsets.all(10.0)),
            addTextField('Eosinophils', eosinophils),
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
                (eosinophils.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(eosinophils.text) < 1)
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
                (eosinophils.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(eosinophils.text) < 1)
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
            const Padding(padding: EdgeInsets.all(10.0)),
            addTextField('Basophils', basophils),
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
                (basophils.text.isEmpty)
                    ? const Icon(Icons.square, color: Colors.white)
                    : ((double.parse(basophils.text) < 0.5)
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
                (basophils.text.isEmpty)
                    ? const Text(' ')
                    : ((double.parse(basophils.text) < 0.5)
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
