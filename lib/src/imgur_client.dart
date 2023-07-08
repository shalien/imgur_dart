import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'model/image.dart';

@immutable
class ImgurClient {
  static ImgurClient? _instance;

  final Client _client;

  final String clientId;

  ImgurClient._(this.clientId, {Client? client}) : _client = client ?? Client();

  factory ImgurClient(String clientId, {Client? client}) {
    return _instance ??= ImgurClient._(clientId, client: client);
  }

  Future<Image> getImage(String imageHash) async {
    String hash = parseInput(imageHash);

    Uri uri = Uri.https('api.imgur.com', '/3/image/$hash');

    var response = await _client
        .get(uri, headers: {'Authorization': ' Client-ID $clientId'});

    if (response.statusCode != 200) {
      throw response;
    }

    var json = jsonDecode(response.body);

    if (json['data'] == null) {
      throw response;
    }

    return Image.fromJson(json['data']);
  }

  String parseInput(String maybeHash) {
    if (Uri.tryParse(maybeHash) != null) {
      final uri = Uri.parse(maybeHash);

      return uri.pathSegments.last.split('.').first;
    }

    return maybeHash;
  }
}
