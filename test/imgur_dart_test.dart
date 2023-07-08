import 'package:imgur_dart/imgur_dart.dart';
import 'package:sha_env/sha_env.dart';
import 'package:test/test.dart';

void main() {
  test('First Test', () async {
    await load();

    final client = ImgurClient(fromEnvironmentString('IMGUR'));

    final image = await client.getImage('https://i.imgur.com/BIWY2YS.jpg');

    print(image);

    expect(image, isNotNull);
  });
}
