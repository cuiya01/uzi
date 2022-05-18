
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
          title: const Text("Temperature"),
        ),
        body:Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child:Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            child: const Icon(Icons.arrow_drop_up_rounded,size: 100,color: Color.fromRGBO(37, 97, 161, 1),),
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState((){
                                temperature ++ ;
                              });
                            },
                          ),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //边框圆角设置
                              border: Border.all(width: 1, color: const Color.fromRGBO(37, 97, 161, 1)),
                              borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                            ),
                            child: Text(temperature.toString() + "℃",style: TextStyle(fontSize: 50,color: model == 0 ? Colors.red : Colors.blue),),
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                            alignment: Alignment.center,
                          ),
                          GestureDetector(
                            child: const Icon(Icons.arrow_drop_down_rounded,size: 100,color: Color.fromRGBO(37, 97, 161, 1),),
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState((){
                                temperature -- ;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            child: const Icon(Icons.arrow_drop_up_rounded,size: 100,color: Color.fromRGBO(37, 97, 161, 1),),
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState((){
                                model = 0;
                              });
                            },
                          ),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //边框圆角设置
                              border: Border.all(width: 1, color: const Color.fromRGBO(37, 97, 161, 1)),
                              borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                            ),
                            child: Icon(model == 0 ? Icons.wb_sunny : Icons.ac_unit_rounded,size: 100,color: model == 0 ? Colors.red : const Color.fromRGBO(37, 97, 161, 1),),
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                            alignment: Alignment.center,
                          ),
                          GestureDetector(
                            child: const Icon(Icons.arrow_drop_down_rounded,size: 100,color: Color.fromRGBO(37, 97, 161, 1),),
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState((){
                                model = 1;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            child:Icon(Icons.power,size: 100,color: _on ? const Color.fromRGBO(37, 97, 161, 1) : Colors.grey,),
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState((){
                                _on = !_on;
                              });
                            },
                          ),
                          Container(
                            child: Text("On",style: TextStyle(fontSize: 50,color: _on ?  const Color.fromRGBO(37, 97, 161, 1) : Colors.grey),),
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            child:  Icon(Icons.power_off,size: 100,color:_on ? Colors.grey: const Color.fromRGBO(37, 97, 161, 1),),
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState((){
                                _on = !_on;
                              });
                            },
                          ),
                          Container(
                            child: Text("Off",style: TextStyle(fontSize: 50,color: _on ? Colors.grey: const Color.fromRGBO(37, 97, 161, 1)),),
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}


