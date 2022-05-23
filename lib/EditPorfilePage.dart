
import 'package:flutter/material.dart';

import '../../main.dart';
class EditPorfilePage extends StatefulWidget {
  final Map? arguments;
  const EditPorfilePage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _EditPorfilePageState();
}

class _EditPorfilePageState extends State<EditPorfilePage> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _carController = TextEditingController();
  final TextEditingController _favoritController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _nameController.text = widget.arguments!["name"];
    _carController.text = widget.arguments!["car"];
    _favoritController.text = "something";
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Edit Porfile"),
        ),
        body:Container(
          color: const Color.fromRGBO(224, 246, 255, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                child: Column(
                  children: [
                    Container(
                      decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5, //阴影范围
                              spreadRadius: 1, //阴影浓度
                              color: Colors.grey, //阴影颜色
                              offset:Offset(2,2)
                          ),
                        ],
                      ),
                      height: 70,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Name:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          Expanded(
                            child: SizedBox(
                              child: TextField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                  ),
                                  hintText: 'Name',
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                                ),
                                controller: _nameController,
                                autocorrect:false,
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.black,fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5, //阴影范围
                              spreadRadius: 1, //阴影浓度
                              color: Colors.grey, //阴影颜色
                              offset:Offset(2,2)
                          ),
                        ],
                      ),
                      height: 70,
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Car:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          Expanded(
                            child: SizedBox(
                              child: TextField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                  ),
                                  hintText: 'Car',
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                                ),
                                controller: _carController,
                                autocorrect:false,
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.black,fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5, //阴影范围
                              spreadRadius: 1, //阴影浓度
                              color: Colors.grey, //阴影颜色
                              offset:Offset(2,2)
                          ),
                        ],
                      ),
                      height: 70,
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Favorit:",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          Expanded(
                            child: SizedBox(
                              child: TextField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                  ),
                                  hintText: 'Favorit',
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                                ),
                                controller: _favoritController,
                                autocorrect:false,
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.black,fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 50),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    Navigator.pop(context,[_nameController.text , _carController.text]);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5, //阴影范围
                            spreadRadius: 1, //阴影浓度
                            color: Colors.grey, //阴影颜色
                            offset:Offset(2,2)
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: const Text("Save",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

