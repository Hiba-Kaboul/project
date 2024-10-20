import 'package:chef2/model/meals_model.dart';
import 'package:chef2/model/user_info.dart';
import 'package:dio/dio.dart';

String token = "";
Future<bool> LogIn(UserInfo user) async {
  try {
    Dio dio = Dio();
    Response response = await dio.post(
        "https://food-api-omega.vercel.app/api/v1/chef/signin",
        data: user.toMap());
    if (response.statusCode == 202) {
      token = response.data["token"];
      return true;
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}

Future<MealsModel> getMyMeals() async {
  Dio dio = Dio();
  Response response = await dio.get(
      "https://food-api-omega.vercel.app/api/v1/chef/get-chef/66166877047e0824bcaa3368/meals",
      options: Options(headers: {"token": "FOODAPI $token"}));
  MealsModel meals = MealsModel.fromMap(response.data);
  return meals;
}
