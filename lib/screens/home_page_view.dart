import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kansizlik_tanisi/core/calculate.dart';
import 'package:kansizlik_tanisi/core/model.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

late Model model;

class _HomePageViewState extends State<HomePageView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    model = Model();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Mobil Kansizlik Tanisi"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text("HGB Degeri :",
                            style: TextStyle(fontSize: 20))),
                    Expanded(
                      flex: 6,
                      child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,3}')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: const InputDecoration(
                            labelText: "HBG degeri",
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "lutfen degeri giriniz!";
                            }
                          },
                          onChanged: (value) {
                            setState(() {
                              value == ""
                                  ? model.hgb = 0
                                  : model.hgb = num.tryParse(value)!;
                            });
                          }),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text("HCT Degeri :",
                            style: TextStyle(fontSize: 20))),
                    Expanded(
                      flex: 6,
                      child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,3}')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: const InputDecoration(
                            labelText: "HCT degeri",
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "lutfen degeri giriniz!";
                            }
                          },
                          onChanged: (value) {
                            setState(() {
                              value == ""
                                  ? model.hct = 0
                                  : model.hct = num.tryParse(value)!;
                            });
                          }),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text("MCHC Degeri :",
                            style: TextStyle(fontSize: 20))),
                    Expanded(
                      flex: 6,
                      child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,3}')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: const InputDecoration(
                            labelText: "MCHCdegeri",
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "lutfen degeri giriniz!";
                            }
                          },
                          onChanged: (value) {
                            setState(() {
                              value == ""
                                  ? model.mchc = 0
                                  : model.mchc = num.tryParse(value)!;
                            });
                          }),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text("MCH Degeri :",
                            style: TextStyle(fontSize: 20))),
                    Expanded(
                      flex: 6,
                      child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,3}')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: const InputDecoration(
                            labelText: "MCH degeri",
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "lutfen degeri giriniz!";
                            }
                          },
                          onChanged: (value) {
                            setState(() {
                              value == ""
                                  ? model.mch = 0
                                  : model.mch = num.tryParse(value)!;
                            });
                          }),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    const Expanded(
                        flex: 4,
                        child: Text("RBC Degeri :",
                            style: TextStyle(fontSize: 20))),
                    Expanded(
                      flex: 6,
                      child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^\d+\.?\d{0,3}')),
                          ],
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: const InputDecoration(
                            labelText: "RBC degeri",
                          ),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "lutfen degeri giriniz!";
                            }
                          },
                          onChanged: (value) {
                            setState(() {
                              value == ""
                                  ? model.rbc = 0
                                  : model.rbc = num.tryParse(value)!;
                            });
                          }),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {});
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Kansizlik Tanisi'),
                            content: Calculate.isAnemia(model) == true
                                ? const Text('-Kansiz-')
                                : const Text('-Saglikli-'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Kansizligi Hesapla",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
