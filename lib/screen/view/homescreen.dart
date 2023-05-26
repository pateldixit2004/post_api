import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/productprovider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtname=TextEditingController();
  TextEditingController txtprice=TextEditingController();
  TextEditingController txtoffer =TextEditingController();
  TextEditingController txtcategory =TextEditingController();
  TextEditingController txtrate =TextEditingController();
  TextEditingController txtdesc =TextEditingController();
  PtrroductProvider? providerF;
  PtrroductProvider? providerT;
  @override
  Widget build(BuildContext context) {
    providerF=Provider.of<PtrroductProvider>(context,listen: false);
    providerT=Provider.of<PtrroductProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          TextField(controller: txtname,),
          TextField(controller: txtprice,),
          TextField(controller: txtoffer),
          TextField(controller: txtcategory,),
          TextField(controller: txtrate,),
          TextField(controller: txtdesc,),

          SizedBox(height: 20,),
          ElevatedButton(onPressed: ()async  {
            
            String msg= await providerF!.getPostApi(txtname.text, txtname.text, txtoffer.text, txtcategory.text, txtrate.text, txtdesc.text);

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$msg")));

          }, child: Text("Add to Card")),

        ],
      ),
    ),);
  }
}
