import 'package:http/http.dart' as http;
import 'dart:convert';

Future apiConnect() async {
  try {
    var url =
        'https://api.openweathermap.org/data/2.5/forecast?lat=-6.200000&lon=106.816666&exclude=daily&units=metric&appid=49e5853edeb3e252fcd4177d15aca5ad';

    var apiResult = await http.get(Uri.parse(url));
    var jsonObject = jsonDecode(apiResult.body);
    print('Weather forecast : ');
    for (int i = 0; i <= 39; i++) {
      var temp =
          (jsonObject as Map<String, dynamic>)['list'][i]['main']['temp'];
      var date = (jsonObject as Map<String, dynamic>)['list'][i]['dt_txt'];

      print('$date : $temp \u2103');
    }
  } catch (e) {
    print(e);
  }
}
