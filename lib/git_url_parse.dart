library git_url_parse;

class GitUrlParseResult {
  final List<String> protocols;
  final int port;
  final String resource;
  final String user;
  final String pathname;
  final String protocol;
  final String token;

  const GitUrlParseResult({
    this.protocols,
    this.port,
    this.resource,
    this.user,
    this.pathname,
    this.protocol,
    this.token,
  });

  bool operator ==(dynamic other) {
    if (other is! GitUrlParseResult) return false;

    var o = other as GitUrlParseResult;
    return protocols == o.protocols &&
        port == o.port &&
        o.resource == o.resource &&
        user == o.user &&
        pathname == o.pathname &&
        protocol == o.protocol &&
        token == o.token;
  }
}

GitUrlParseResult gitUrlParse(String url) {
  return GitUrlParseResult();
}
