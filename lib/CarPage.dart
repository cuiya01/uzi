import 'package:flutter/material.dart';
import 'package:uzi/HomePage.dart';

class CarPage extends StatefulWidget {
  final Map? arguments;
  const CarPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  bool? icon1 = false;
  bool? icon2 = false;
  bool? icon3 = false;
  bool? icon4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        body:Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      scaffoldkey.currentState!.openDrawer();
                      // Navigator.pushNamed(context, "/PersonalInformationPage");
                    },
                    child: CircleAvatar(
                      maxRadius: 20,
                      backgroundColor:Colors.grey,
                      child: Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        child: const Text("C",style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.w800),),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: const Text("CC's 3",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600),),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Icon(Icons.battery_2_bar_rounded,color: Colors.grey,size: 20,),
                              Text("84%",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w600),)
                            ],
                          )
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: const Text("Parking",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Image(image: AssetImage("assets/tslPng.jpg"),),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(icon1! ? Icons.lock : Icons.lock_open,color: Colors.grey,size: 30),
                      onPressed: (){
                        setState((){
                          icon1 = !icon1!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.ac_unit_rounded,color: icon2! ? Colors.blue : Colors.grey,size: 30,),
                      onPressed: (){
                        setState((){
                          icon2 = !icon2!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.bolt,color: icon3! ? Colors.amber : Colors.grey,size: 30,),
                      onPressed: (){
                        setState((){
                          icon3 = !icon3!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.privacy_tip,color:icon4! ?Colors.red :  Colors.grey,size: 30,),
                      onPressed: (){
                        setState((){
                          icon4 = !icon4!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [

                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.pushNamed(context, "/CarControPage");
                    },
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.local_taxi,color: Colors.grey,size: 30,),
                          const SizedBox(width: 20,),
                          const Expanded(
                            child: Text("Contro",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.pushNamed(context, "/CarTemperaturePage");
                    },
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.ac_unit_rounded,color: Colors.grey,size: 30,),
                          const SizedBox(width: 20,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Temperature",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                                  Text("14℃",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w700),),
                                ],
                              )
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.pushNamed(context, "/CarLocationPage");
                    },
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.navigation,color: Colors.grey,size: 30,),
                          const SizedBox(width: 20,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Location",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                                  Text("London",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w700),),
                                ],
                              )
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                        ],
                      ),
                    ),
                  ),

                  // Container(
                  //   height: 70,
                  //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  //   child: Row(
                  //     children: [
                  //       const Icon(Icons.alarm,color: Colors.grey,size: 30,),
                  //       const SizedBox(width: 20,),
                  //       const Expanded(
                  //           child: Text("Booking",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                  //       ),
                  //       Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   height: 70,
                  //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  //   child: Row(
                  //     children: [
                  //       const Icon(Icons.privacy_tip,color: Colors.grey,size: 30,),
                  //       const SizedBox(width: 20,),
                  //       Expanded(
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: const [
                  //               Text("Security",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                  //             ],
                  //           )
                  //       ),
                  //       Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                  //     ],
                  //   ),
                  // ),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      Navigator.pushNamed(context, "/CarUpgradePage");
                    },
                    child: Container(
                      height: 70,
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        children: [
                          const Icon(Icons.local_mall,color: Colors.grey,size: 30,),
                          const SizedBox(width: 20,),
                          const Expanded(
                            child: Text("Upgrade",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                          ),
                          Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      children: [
                        const Icon(Icons.build,color: Colors.grey,size: 30,),
                        const SizedBox(width: 20,),
                        const Expanded(
                          child: Text("Service",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20,),
              Divider(height: 1,color: Colors.grey,),
              const SizedBox(height: 30,),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text("MODEL 3",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                alignment: Alignment.centerLeft,
                child: const Text("Long Range",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w600),),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                alignment: Alignment.centerLeft,
                child: const Text("10,000 km",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w600),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.centerLeft,
                child: const Text("VIN:XXXXXXXX",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w600),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                alignment: Alignment.centerLeft,
                child: const Text("vision:2022.4.5.13",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
