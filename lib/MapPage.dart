import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uzi/HomePage.dart';

class MapPage extends StatefulWidget {
  final Map? arguments;
  const MapPage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _MapPageState();

}

class mModel{
  String? url;
  String? text;
  String? text1;
  String? address;

  String? dialogText;
  String? dialogText1;

  LatLng? data;
  String? addressName;
  mModel(this.url, this.text,this.text1,this.address,this.dialogText,this.dialogText1,this.data,this.addressName);
}

class _MapPageState extends State<MapPage> {


  final TextEditingController _searchController = TextEditingController();

  final List<mModel> _messageList = [
    mModel("assets/tsl.png","Parking Zone","Public parking space","38 woburn PI ","free parking lot：35","free charging lot：4",
        LatLng(51.52430129244981, -0.1275243081851175),"38 Woburn Pl, London WC1H 0JR"),
    mModel("assets/tsl.png","Just Park","Public parking space","Duke Street St James's, St. James's","free parking lot：1","free charging lot：0",
        LatLng(51.516546705001424, -0.11449914587942217),"London , London SW1Y 6JF"),
    mModel("assets/tsl.png","Q-Park ParkLane","Public parking space","Park Ln","free parking lot：55","free charging lot：7",
        LatLng(51.51686135241897, -0.12867967707891995),"New Oxford St, London W1K 7AN"),
  ];

  @override
  void initState() {
    super.initState();
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
        body:GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: (){
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            color: const Color.fromRGBO(228, 246, 254, 1),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
                  child: GestureDetector(
                    child:  CircleAvatar(
                      maxRadius: 30,
                      backgroundColor:Colors.white,
                      child: Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        child: const Text("C",style: TextStyle(fontSize: 15,color: Color.fromRGBO(255, 65, 131, 1),fontWeight: FontWeight.w800),),
                      ),
                    ),
                    behavior: HitTestBehavior.opaque,
                    onTap: (){
                      scaffoldkey.currentState!.openDrawer();
                      // Navigator.pushNamed(context, "/PersonalInformationPage");
                    },
                  )
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: TextField(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          labelStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.black,fontSize: 15),
                          icon: Icon(Icons.search,color: Colors.black,size: 30,),
                        ),
                        controller: _searchController,
                        autocorrect:false,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.black,fontSize: 15),
                      ),
                    )
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
                  alignment: Alignment.centerLeft,
                  child: const Text("37 results found",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600),),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return Center(
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 1, color: Colors.black),
                                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  height:300,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                                          child: const Icon(Icons.close,size: 40,color: Colors.grey,),
                                        ),
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(40,20, 20, 20),
                                            child: CircleAvatar(
                                              maxRadius: 40,
                                              backgroundColor:Colors.white,
                                              backgroundImage:AssetImage(_messageList[index].url!),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(_messageList[index].text!,style: const TextStyle(fontSize: 24,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w700),),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(_messageList[index].dialogText!,style: const TextStyle(fontSize: 15,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                                ),
                                                Container(
                                                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(_messageList[index].dialogText1!,style: const TextStyle(fontSize: 15,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          margin: const EdgeInsets.fromLTRB(30, 30, 30, 10),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(236, 39, 97,  1),
                                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                          ),
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                          child: const Text("Derections",style: TextStyle(fontSize: 15,color: Colors.white,),),
                                        ),
                                        onTap: (){
                                          Navigator.pop(context);
                                          Navigator.pushNamed(context, "/GoogleMapPage",arguments: {
                                            "data" : _messageList[index],
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ),
                              );
                            }
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 1,
                                color: Colors.grey,
                                offset:Offset(5,5)
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(20,20, 20, 20),
                              child: CircleAvatar(
                                maxRadius: 40,
                                backgroundColor:Colors.white,
                                backgroundImage:AssetImage(_messageList[index].url!),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(_messageList[index].text!,style: const TextStyle(fontSize: 24,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w700),),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(_messageList[index].text1!,style: const TextStyle(fontSize: 15,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(_messageList[index].address!,style: const TextStyle(fontSize: 18,color: Color.fromRGBO(37, 97, 161, 1),fontWeight: FontWeight.w500),),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: _messageList.length,
                )



              ],
            ),
          ),
        )
      ),
    );
  }
}




