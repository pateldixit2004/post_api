import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiHelper
{

  static ApiHelper apiHelper =ApiHelper();
  Future<String> postapi(String name,String price,String offer,String category,String rate,String desc)
  async {
    String link = 'https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php';

    var responce = await http.post(Uri.parse(link), body: {
      'p_name': name,
      'p_price': price,
      'p_offer': offer,
      'p_category': category,
      'p_rate': rate,
      'p_desc': desc,
    },);
    var json = jsonDecode(responce.body);
    if (json[0]['status']=='ok')
      {
        return 'success';
      }
    return 'error';
  }
}