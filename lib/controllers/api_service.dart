import 'dart:convert';
import 'package:http/http.dart' as http;

class APIService {
  // Base URL for your API
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  // Function to get user data
  Future<List<dynamic>> getRequestsData() async {
    var url = Uri.parse('$baseUrl/users');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<dynamic>;
    } else {
      throw Exception('Failed to load users');
    }
  }

  // Function to get posts data
  Future<List<dynamic>> getAreaData() async {
    var url = Uri.parse('$baseUrl/posts');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<dynamic>;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

