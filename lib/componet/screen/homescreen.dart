import 'package:exam_e_commerce/utils/golobal/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 450,

            decoration: BoxDecoration(
              color: Colors.grey.shade100,


            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,color: Colors.black,size: 32,),
                  Text('Wacth APP',style: TextStyle(
                      fontSize: 32,fontWeight: FontWeight.bold
                  ),),
                  InkWell(onTap: () {
                    Navigator.of(context).pushNamed('/cart');
                  },



                      child: Icon(Icons.local_grocery_store_sharp,color: Colors.black,size: 32,)),

                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.search,color: Colors.white,size: 32,),
                        Text('search',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),)
                      ],
                    ),
                  ),

                )
              ],
            ),
          ),
          Wrap(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Expanded(
                  child: Row(

                      children: List.generate(productList.length, (index) => box1(img: productList[index]['img'],OFFER: productList[index]['OFFER'].toString()))
                  ),
                ),
              ),
            ],
          ),


          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children:  List.generate(productList.length, (index) => GestureDetector(
                    onTap: () {
                      selectedIndex=index;
                      Navigator.of(context).pushNamed('/details');


                    },



                    child: box2(imges: productList[index]['imges'].toString(),price: productList[index]['price'])))

            ),
          )



        ],
      ),
    ));
  }

  Padding box1({required String img,required String OFFER}) {
    return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                        fit: BoxFit.cover,
                    image: AssetImage(
                      img

                    ),

                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0,2)
                    )
                  ]
                ),
                child: Text(
                  OFFER,style: TextStyle(fontSize: 32,color: Colors.white),
                ),
              ),
            );
  }
}
Container box2({required String imges,required int price})
{
  return


     Container(
       height:150,
       width: 600,
         child:Padding(
           padding: const EdgeInsets.all(8.0),

             child: Container(
               height: 200,
               width: 400,
               decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.circular(20),
                   image: DecorationImage(
                       fit: BoxFit.cover,
                       image: AssetImage(
                           imges
                       )
                   ),
                   boxShadow: [
                     BoxShadow(
                         color: Colors.black,
                         spreadRadius: 2,
                         blurRadius: 2,
                         offset: Offset(0,2)
                     )
                   ]
               ),
               child: Text.rich(
                   TextSpan(
                       children: [
                         TextSpan(text: '${ price}',style: TextStyle(
                             color: Colors.black,fontSize: 32,fontWeight: FontWeight.bold
                         )),

                       ]
                   )
               ),



             ),



         ),
     );
}