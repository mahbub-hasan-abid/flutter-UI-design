import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oni_cal/utils/custom_input_box.dart';
import 'package:oni_cal/utils/view_all_transaction.dart';

List<Map<String, dynamic>> transactionDetails = [];

class calculatorPage extends StatefulWidget {
  calculatorPage({super.key});

  @override
  State<calculatorPage> createState() => _calculatorPageState();
}

TextEditingController onionKg = TextEditingController();
TextEditingController monTk = TextEditingController();
TextEditingController sellerGet = TextEditingController();
TextEditingController cashKhataGet = TextEditingController();
bool isExpanded = false;

class _calculatorPageState extends State<calculatorPage> {
  @override
  Widget build(BuildContext context) {
    var wd = MediaQuery.of(context).size.width;
    var ht = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "পিয়াজের হিসাব",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: wd * .15, right: wd * .15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => viewAllTransaction(
                                transactionDetails: transactionDetails,
                              ),
                            ));
                      },
                      child: Text(
                        'সব লেন দেন দেখুন',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FormTextFiled(
                controller: onionKg,
                title: 'কত কেজি পিয়াজ :',
                lebel: "",
                keyboardType: TextInputType.number,
              ),
              FormTextFiled(
                controller: monTk,
                title: 'কত টাকা মণ :',
                lebel: "",
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      onPressed: () {
                        dynamic onionkgg = (onionKg.text);
                        dynamic montkk = (monTk.text);
                        int onionkg = int.parse(onionkgg);
                        int montk = int.parse(montkk);
                        isExpanded = true;

                        setState(() {
                          sellerGet.text =
                              ((1 / 40) * (onionkg) * ((montk) - 10))
                                  .toStringAsFixed(2);
                          cashKhataGet.text = ((1 / 40) * (onionkg) * (montk))
                              .toStringAsFixed(2);
                        });
                      },
                      child: Text(
                        'Calculate',
                        style: TextStyle(color: Colors.white),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      onPressed: () {
                        isExpanded = false;
                        onionKg.clear();
                        monTk.clear();
                        sellerGet.clear();
                        cashKhataGet.clear();
                        setState(() {});
                      },
                      child: Text(
                        'Clear',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              if (isExpanded)
                FormTextFiled(
                  controller: sellerGet,
                  title: 'বিক্রেতা পাবে :',
                  lebel: "",
                  isReadOnly: true,
                ),
              if (isExpanded)
                FormTextFiled(
                  controller: cashKhataGet,
                  title: 'ক্যাশ খাতায় যাবে :',
                  lebel: "",
                  isReadOnly: true,
                ),
              if (isExpanded)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.green)),
                        onPressed: () {
                          transactionDetails.add({
                            "onionKg": onionKg.text,
                            "monTk": monTk.text,
                            "sellerGet": sellerGet.text,
                            "cashKhataGet": cashKhataGet.text
                          });
                          isExpanded = false;
                          onionKg.clear();
                          monTk.clear();
                          sellerGet.clear();
                          cashKhataGet.clear();
                          setState(() {});
                        },
                        child: Text(
                          'Insert Data',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
