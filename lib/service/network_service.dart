import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:nyt/constants/app-constants.dart';
import 'dart:convert';

import 'package:nyt/model/NeyYorkTimesData_Model.dart';

class NetWorkService {
  Future<NeyYorkTimesData> fetchMostViewedArticles() async {
    List<NeyYorkTimesData> newYorkTimesDataList = [];

    final response = await http.get(Uri.parse(AppConstants.url));
    if (response.statusCode == 200) {
//       debugPrint("response.statusCode ");
//       final jsonList = json.decode(response.body);
// print(jsonList);

      return NeyYorkTimesData.fromJson(jsonDecode(response.body));
// populate the newYorkTimesDataList with data from the jsonList
//       newYorkTimesDataList=NeyYorkTimesData.fromJson(jsonList);
//
//       debugPrint(newYorkTimesDataList.length.toString());
//       return newYorkTimesDataList;

      // return jsonList
      //     .map<NeyYorkTimesData>((json) => NeyYorkTimesData.fromJson(json))
      //     .toList();
    } else {
      throw Exception('Failed to fetch most viewed articles');
    }
  }
}
