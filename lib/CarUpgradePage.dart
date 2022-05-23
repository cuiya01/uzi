import 'package:flutter/material.dart';

class CarUpgradePage extends StatefulWidget {
  final Map? arguments;
  const CarUpgradePage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _CarUpgradePageState();
}

class _CarUpgradePageState extends State<CarUpgradePage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  bool touch = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Upgrade"),
        ),
        body:Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: [
              Container(
                height: 70,
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  children: [
                    const Text("currently version",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: const Text("1.103",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700),),
                        alignment: Alignment.centerRight,
                      )
                    ),
                    Icon(Icons.keyboard_arrow_right_rounded,color: Colors.grey[800],size: 30,),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  setState((){
                    touch = !touch;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: touch ?  const Color.fromRGBO(37, 97, 161, 1) : Colors.grey,
                    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                  ),
                  child: const Text("upgreade",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


