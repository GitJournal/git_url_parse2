library git_url_parse;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_url_parse.freezed.dart';

@freezed
abstract class GitUrlParseResult with _$GitUrlParseResult {
  factory GitUrlParseResult({
    int port,
    String resource,
    String user,
    String pathname,
    String protocol,
    String token,
  }) = _GitUrlParseResult;
}

GitUrlParseResult gitUrlParse(String url) {
  return GitUrlParseResult();
}

bool isSshUrl(String url) {
  var pIndicatorIndex = url.indexOf('://');
  if (pIndicatorIndex != -1) {
    var protocols = url.substring(0, pIndicatorIndex).split('+');
    return protocols.contains('ssh') || protocols.contains('rsync');
  }

  // FIXME: Is there a better way?
  return url.indexOf('@') < url.indexOf(':');
}
