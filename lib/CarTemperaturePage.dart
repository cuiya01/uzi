
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class CarTemperaturePage extends StatefulWidget {
  final Map? arguments;
  const CarTemperaturePage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _CarTemperaturePageState();
}

class _CarTemperaturePageState extends State<CarTemperaturePage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  bool touch = false;

  int temperature = 16;

  int model = 0;

  bool _on = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(224, 246, 255, 1),
          elevation: 0.0,
          title: const Text(""),
          actions: [
          ],
        ),
        body:Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child:Column(
            children: [
              Container(
                child: const Text("temperature",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 25),),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                alignment: Alignment.centerLeft,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey,
                        offset:Offset(2,2)

                    ),
                  ],

                ),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:  Row(
                  children: [
                    const SizedBox(height: 20,),
                    GestureDetector(
                      child: const Icon(Icons.add,size: 50,color: Colors.black,),
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        setState((){
                          temperature ++ ;
                        });
                      },
                    ),
                    const SizedBox(height: 20,),
                    Expanded(
                      child: AnimatedFlipCounter(
                        value: temperature,
                        fractionDigits: 0,
                        suffix: "℃",
                        textStyle: TextStyle(
                          fontSize: 40,
                          color: model == 0 ? Colors.red : Colors.blue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      child: const Icon(Icons.remove,size: 50,color: Colors.black),
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        setState((){
                          temperature -- ;
                        });
                      },
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
              Container(
                child: const Text("switch",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 25),),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                alignment: Alignment.centerLeft,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey,
                        offset:Offset(2,2)

                    ),
                  ],

                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Icon(Icons.wb_sunny,size: 50,color: model == 0 ? Colors.red : Colors.grey,),
                        behavior: HitTestBehavior.opaque,
                        onTap: (){
                          setState((){
                            model = 0;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: VerticalDivider(width: 1,color: Colors.black,),
                      alignment: Alignment.center,
                      color: Colors.black,
                      width: 1,
                      height: 40,
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Icon(Icons.ac_unit_rounded,size: 50,color: model == 1 ? const Color.fromRGBO(37, 97, 161, 1) : Colors.grey,),
                        behavior: HitTestBehavior.opaque,
                        onTap: (){
                          setState((){
                            model = 1;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}


