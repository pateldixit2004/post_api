

import 'package:flutter/material.dart';
import 'package:post_api/screen/provider/productprovider.dart';
import 'package:post_api/screen/view/homescreen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
       ChangeNotifierProvider(create: (context) => PtrroductProvider(),) ,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context)=>HomeScreen()
        },
      ),
    )
  );

}