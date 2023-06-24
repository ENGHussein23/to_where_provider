import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_where_provider/controller/constants/my_colors.dart';
import 'package:to_where_provider/view/pages/verification_page.dart';
import 'package:to_where_provider/view/widgets/MyDropdownButton.dart';
import 'package:to_where_provider/view/widgets/buttons.dart';
import 'package:to_where_provider/view/widgets/my_text_form_field.dart';

class RegisterPage extends StatelessWidget{
  TextEditingController NumberController=TextEditingController();
  TextEditingController NameController=TextEditingController();
  TextEditingController PasswordController=TextEditingController();
  TextEditingController ConfPasswordController=TextEditingController();
  String selected_Item_main="استراحات";

  final List<String> main_items = [
    'استراحات',
    'Item 2',
    'Item 3',
    'Item 4',
  ];
  String selected_Item_submain="شاليه";

  final List<String> submain_items = [
    'شاليه',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: screenHeight-30,
          width: screenWidth-10,
          margin: const EdgeInsets.only(top: 25,bottom: 5,left: 5,right: 5),
          padding: const EdgeInsets.only(top: 0,bottom: 0,left: 10,right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [almost_light_blue, almost_green,],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height:60,),
                const Center(child: Text("إنشاء حساب",style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w900),),),
                const SizedBox(height:20,),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      MyTextFormField(NameController,"الإسم"),
                      const SizedBox(height: 15,),
                      MyTextFormField(NumberController,"الرقم"),
                      const SizedBox(height: 15,),
                      MyPassFormField(PasswordController,"كلمة المرور"),
                      const SizedBox(height: 15,),
                      MyPassFormField(ConfPasswordController,"تأكيد كلمة المرور"),
                      const SizedBox(height: 15,),
                      MyDropdownButton("التصنيف الرئيسي",main_items,selected_Item_main),
                      const SizedBox(height: 15,),
                      MyDropdownButton("التصنسف الفرعي",submain_items,selected_Item_submain),
                      const SizedBox(height: 30,),
                      WhiteButton((){
                        Get.to(VerificationPage());
                      }, "انشاء حساب")
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}