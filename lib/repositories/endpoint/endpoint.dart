class EndPoint {
  final String base;
  final String path;

  EndPoint({required this.base, required this.path});
}

//https://dog.ceo/api/breeds/image/random
//https://randomuser.me/api/
class EndPoints {
  static String _dogImage = "dog.ceo";
  static String get _base {
    return _dogImage;
  }
  static String _profile = "randomuser.me";
  static String get _base1 {
    return _profile;
  }
  static EndPoint get dogImages => _getEndPointWithPath('/api/breeds/image/random');

  static EndPoint get profile_details => _getEndPointWithProfile('/api/' );

  static EndPoint _getEndPointWithProfile(String path) {
    return EndPoint(base: _base1, path: path);
  }

  static EndPoint _getEndPointWithPath(String path) {
    return EndPoint(base: _base, path: path);
  }
}