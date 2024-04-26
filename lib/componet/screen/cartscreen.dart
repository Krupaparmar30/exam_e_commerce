import 'package:exam_e_commerce/utils/golobal/product.dart';
import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.backspace),
          onPressed: () {


            Navigator.of(context).pop();
          },


        ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(cartList.length, (index) => Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                cartList[index]['imges']
                            )
                        )
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 150,right: 200),
                  child: GestureDetector(
                    onTap: () {

                     setState(() {
                      cartList.removeAt(index);
                     });
                    },




                      child: Icon(Icons.delete,size: 32,)),
                ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 200,
                    width: 220,
                   color: Colors.black,
                   child: Text.rich(
                  TextSpan(
                  children: [
                  TextSpan(text: '${cartList[index]['price']}',style: TextStyle(
                    color: Colors.white,fontSize: 40,
                  )),
                    TextSpan(text: cartList[index]['star'],style: TextStyle(
                      color: Colors.white,fontSize: 16,
                    )), TextSpan(text: cartList[index]['line'],style: TextStyle(
                      color: Colors.white,fontSize: 42,
                    )),

                              ]
                            )
                            ),


                  ),



                ),

              ],
            )),


          ),
        ),
      ),
    );
  }
}
