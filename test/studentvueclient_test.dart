import 'package:studentvueclient/studentvueclient.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    late StudentVueClient s;

    setUp(() {
      s = StudentVueClient(
          '452657', 'Enkv90132', 'md-mcps-psv.edupoint.com', true, false);
    });

    test('First Test', () async {
      // expect(awesome.isAwesome, isTrue);
      var d = await s.loadGradebook();
      expect(d.classes!.isNotEmpty, isTrue);
      print(d.classes);
    });
  });
}
