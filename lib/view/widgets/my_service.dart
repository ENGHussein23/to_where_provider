import 'package:flutter/material.dart';
import 'package:to_where_provider/Controller/Constants/my_colors.dart';
import 'package:to_where_provider/View/Widgets/buttons.dart';
import 'package:to_where_provider/view/widgets/MyTexts.dart';
import 'package:to_where_provider/view/widgets/item_container.dart';

class MyService extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5,left: 5,bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingAndDistanceButton("4.3",Icons.star,Colors.amberAccent,(){print("hi 2");},false),
                  SizedBox(height: 10,),
                  RatingAndDistanceButton("15 كم",Icons.location_pin,Colors.black87,(){print("hi 1");},true),
                ],
              ),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        color: almost_bright_green,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: Colors.black,
                            width: 2
                        )
                    ),
                  ),
                  SizedBox(width: 6,),
                  Text("خدمة 2 : xxxxx",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w700,fontSize: 20),)
                ],
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Container(
            width: double.infinity-40,
            height:300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/mountains.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          const SizedBox(height: 15,),
          Text("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w700,fontSize: 15),),
          const SizedBox(height: 15,),
          TowTexts("التصنيف:  ","عائلي"),
          TowTexts("أقصى عدد:  ","30 شخص"),
          TowTexts("السعر:  ","50 ريال"),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45,vertical: 13),
                  decoration:BoxDecoration(
                    color: Color.fromARGB(25, 25, 25, 25),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text("حذف",style: TextStyle(fontSize: 18),),
                ),
              ),
              ItemContainerInnerWidget(Container(
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 7),
                child: Text("تعديل",style: TextStyle(fontSize: 18),),
              ),(){}),
            ],
          )
        ],
      ),
    );
  }

}