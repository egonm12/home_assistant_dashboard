import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:home_assistant_dart/home_assistant_dart.dart';

class HomeAssistantClient {
  static late HomeAssistantDart _client;

  factory HomeAssistantClient() {
    _client = HomeAssistantDart(
      token: dotenv.get('API_ACCESS_TOKEN'),
      baseUrl: dotenv.get('API_BASE_URL'),
    );

    return HomeAssistantClient._internal();
  }

  HomeAssistantClient._internal();

  static HomeAssistantDart get client => _client;
}
