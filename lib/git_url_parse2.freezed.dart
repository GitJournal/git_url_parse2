// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of git_url_parse2;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$GitUrlParseResult {
  int get port;
  String get resource;
  String get user;
  String get path;
  String get protocol;
  String get token;

  GitUrlParseResult copyWith(
      {int port,
      String resource,
      String user,
      String path,
      String protocol,
      String token});
}

class _$_GitUrlParseResult implements _GitUrlParseResult {
  _$_GitUrlParseResult(
      {this.port,
      this.resource,
      this.user,
      this.path,
      this.protocol,
      this.token});

  @override
  final int port;
  @override
  final String resource;
  @override
  final String user;
  @override
  final String path;
  @override
  final String protocol;
  @override
  final String token;

  @override
  String toString() {
    return 'GitUrlParseResult(port: $port, resource: $resource, user: $user, path: $path, protocol: $protocol, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GitUrlParseResult &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.resource, resource) ||
                const DeepCollectionEquality()
                    .equals(other.resource, resource)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.protocol, protocol) ||
                const DeepCollectionEquality()
                    .equals(other.protocol, protocol)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      port.hashCode ^
      resource.hashCode ^
      user.hashCode ^
      path.hashCode ^
      protocol.hashCode ^
      token.hashCode;

  @override
  _$_GitUrlParseResult copyWith({
    Object port = freezed,
    Object resource = freezed,
    Object user = freezed,
    Object path = freezed,
    Object protocol = freezed,
    Object token = freezed,
  }) {
    return _$_GitUrlParseResult(
      port: port == freezed ? this.port : port as int,
      resource: resource == freezed ? this.resource : resource as String,
      user: user == freezed ? this.user : user as String,
      path: path == freezed ? this.path : path as String,
      protocol: protocol == freezed ? this.protocol : protocol as String,
      token: token == freezed ? this.token : token as String,
    );
  }
}

abstract class _GitUrlParseResult implements GitUrlParseResult {
  factory _GitUrlParseResult(
      {int port,
      String resource,
      String user,
      String path,
      String protocol,
      String token}) = _$_GitUrlParseResult;

  @override
  int get port;
  @override
  String get resource;
  @override
  String get user;
  @override
  String get path;
  @override
  String get protocol;
  @override
  String get token;

  @override
  _GitUrlParseResult copyWith(
      {int port,
      String resource,
      String user,
      String path,
      String protocol,
      String token});
}
