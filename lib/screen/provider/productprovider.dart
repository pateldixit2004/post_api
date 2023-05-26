import 'package:flutter/foundation.dart';
import 'package:post_api/utils/api_helper.dart';
import 'package:post_api/utils/api_helper.dart';

class PtrroductProvider extends ChangeNotifier
{

  Future<String> getPostApi(name,price,offer,category,rate,desc)
  async {
     return await ApiHelper.apiHelper.postapi(name,price,offer,category,rate,desc);

  }

}