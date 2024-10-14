import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white30,
                  filled: true,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                  hintText: "Search..",
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(CupertinoIcons.mic,color: Colors.white,)
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Movies",style: TextStyle(color: Colors.white),),
                Container(
                  decoration: BoxDecoration(
                    color:Colors.red,
                    borderRadius: BorderRadius.circular(5)
                  ),
                     height: 25,width: 90, child: Center(child: Text("Web Series",style: TextStyle(color: Colors.white),
                )
                )
                ),
                Text("TV Shows",style: TextStyle(color: Colors.white),),
                Text("Music",style: TextStyle(color: Colors.white),),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10),
                    child: Container(
                      height: 400,
                      width: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img.png'
                          ),
                          fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10 ),
                    child: Container(
                      height: 400,
                      width: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img_1.png'),
                          fit: BoxFit.fill
                        ),
                  borderRadius: BorderRadius.circular(10)
                    ),
                  )
                  ),
                ]
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New Relase" ,style: TextStyle(
                    color: Colors.pink[50]
                  ),),
                  Text("View All",style: TextStyle(
                    color: Colors.pink[50]
                  ),)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height:250 ,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/img_1.png'),
                            fit: BoxFit.fill
                          )
                      ),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:DecorationImage(
                         image:  AssetImage('assets/img_2.png'),
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image:DecorationImage(
                        image:  AssetImage('assets/img.png'),
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ) ;
  }
}
