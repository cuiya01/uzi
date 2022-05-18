import 'package:flutter/material.dart';
import 'package:uzi/CarPage.dart';
import 'package:uzi/MapPage.dart';

class HomePage extends StatefulWidget {
  final Map? arguments;
  const HomePage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class dModel{
  Icon icon;
  String? text;
  dModel(this.icon, this.text);
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onTap(int index) {
    pageController.jumpToPage(index);

  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final pages = const [
    MapPage(),
    CarPage(),
    // Container(),
  ];

  final List<dModel> _list = [
    dModel(const Icon(Icons.person), "Personal Information"),
    dModel(const Icon(Icons.notifications), "Notification"),
    dModel(const Icon(Icons.favorite), "Saved"),
    dModel(const Icon(Icons.settings), "Setting"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 3 / 4,
        child: Container(
          color: const Color.fromRGBO(224, 246, 255, 1),
          child: ListView(
            children: [
              const SizedBox(height: 30,),
              CircleAvatar(
                maxRadius: 80,
                backgroundColor:Colors.white,
                child: Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  child: const Text("TrApp",style: TextStyle(fontSize: 18,color: Color.fromRGBO(255, 65, 131, 1),fontWeight: FontWeight.w800),),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                child: const Text("cecilia",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w800),),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.pin_drop),
                    Text("London",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ],
                )
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const SizedBox(height: 1,),
                alignment: Alignment.center,
                color: Colors.black,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  Navigator.pushNamed(context, "/PersonalInformationPage");
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    children: [
                      const Icon(Icons.person),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: const Text( "Personal Information",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const SizedBox(height: 1,),
                alignment: Alignment.center,
                color: Colors.black,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  Navigator.pushNamed(context, "/NotificationPage");
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    children: [
                      const Icon(Icons.notifications),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: const Text( "Notification",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const SizedBox(height: 1,),
                alignment: Alignment.center,
                color: Colors.black,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: (){
                  Navigator.pushNamed(context, "/SettingPage");
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    children: [
                      const Icon(Icons.settings),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: const Text("Settings",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const SizedBox(height: 1,),
                alignment: Alignment.center,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromRGBO(224, 246, 255, 1),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: pages, // 禁止滑动
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.map_outlined,size: 30,),
            label: "Map",//title: Text("消息",style: TextStyle(color: currentIndex == 0 ? Colors.white : Colors.grey),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.car_rental_rounded,size: 30,),
            label: "Car",//title: Text("溢价",style: TextStyle(color: currentIndex == 1 ? Colors.white : Colors.grey),),
          ),
        ],
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(37, 97, 161, 1),
        unselectedItemColor: Colors.black,
        onTap: onTap,
      ),
    );
  }
}




