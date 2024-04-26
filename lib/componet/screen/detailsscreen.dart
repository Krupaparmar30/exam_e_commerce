import 'package:exam_e_commerce/utils/golobal/product.dart';
import 'package:flutter/material.dart';

class detalisPage extends StatefulWidget {
  const detalisPage({super.key});

  @override
  State<detalisPage> createState() => _detalisPageState();
}

class _detalisPageState extends State<detalisPage> {
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
      body: Column(
        children: [

          ...List.generate(1, (index) => Row(
            children: [
              Center(
                child: Container(
                  height: 300,
                  width: 420,
                 decoration: BoxDecoration(
                   color: Colors.pink,
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage(
                         (productList[selectedIndex]['imges'])
                     )
                   )
                 ),
                ),
              ),

            ],

          )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height:350,
                  width: 500,

                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: '${productList[selectedIndex]['des']}',style: TextStyle(
                          color: Colors.black,fontWeight: FontWeight.w800, fontSize: 32,
                        ))
                      ]
                    )
                  ),
                ),
              ),
            ...List.generate(1, (index) => GestureDetector(onTap:
                () {
                  cartList.add(productList[selectedIndex]);
                  // Navigator.of(context).pushNamed('/cart');
                },child: box3()))
            ],
          )

        ],
      ),
    );
  }

  Container box3() {
    return Container(
              height: 100,
              width: 200,
           decoration: BoxDecoration(
             color: Colors.black,
             borderRadius: BorderRadius.circular(20),

           ),
              child: Center(
                child: Text(
                  'ADD TO CART',style: TextStyle(
                   fontSize: 22,color: Colors.white
                ),
                ),
              ),
            );
  }
}
