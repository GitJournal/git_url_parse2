import 'package:test/test.dart';

import 'package:git_url_parse/git_url_parse.dart';

var INPUT = <String, GitUrlParseResult>{
  // Secure Shell Transport Protocol (SSH)
  "ssh://user@host.xz:42/path/to/repo.git/": GitUrlParseResult(
    port: 42,
    resource: "host.xz",
    user: "user",
    pathname: "/path/to/repo.git",
    protocol: "ssh",
  ),

  "git+ssh://git@host.xz/path/name.git": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "git",
    pathname: "/path/name.git",
    protocol: "git+ssh",
  ),

  "ssh://user@host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "user",
    pathname: "/path/to/repo.git",
    protocol: "ssh",
  ),

  "ssh://host.xz:5497/path/to/repo.git/": GitUrlParseResult(
    port: 5497,
    resource: "host.xz",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "ssh",
  ),

  "ssh://host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "ssh",
  ),

  "git@domain.xxx.com:42foo/bar.git": GitUrlParseResult(
    port: null,
    resource: "domain.xxx.com",
    user: "git",
    pathname: "42foo/bar.git",
    protocol: "ssh",
  ),

  "ssh://user@host.xz/~user/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "user",
    pathname: "/~user/path/to/repo.git",
    protocol: "ssh",
  ),

  "ssh://host.xz/~user/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/~user/path/to/repo.git",
    protocol: "ssh",
  ),

  "ssh://user@host.xz/~/path/to/repo.git": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "user",
    pathname: "/~/path/to/repo.git",
    protocol: "ssh",
  ),

  "ssh://host.xz/~/path/to/repo.git": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/~/path/to/repo.git",
    protocol: "ssh",
  ),

  "user@host.xz:/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "user",
    pathname: "/path/to/repo.git",
    protocol: "ssh",
  ),

  "user@host.xz:~user/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "user",
    pathname: "~user/path/to/repo.git",
    protocol: "ssh",
  ),

  "user@host.xz:path/to/repo.git": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "user",
    pathname: "path/to/repo.git",
    protocol: "ssh",
  ),

  "rsync://host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "rsync",
  ),

  // Git Transport Protocol

  "git://host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "git",
  ),

  "git://host.xz/~user/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/~user/path/to/repo.git",
    protocol: "git",
  ),

  // HTTP/S Transport Protocol
  "http://host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "http",
  ),

  "https://host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "https",
  ),

  "https://token:x-oauth-basic@host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "token:x-oauth-basic",
    pathname: "/path/to/repo.git",
    token: "token",
    protocol: "https",
  ),

  "https://x-token-auth:token@host.xz/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "x-token-auth:token",
    pathname: "/path/to/repo.git",
    token: "token",
    protocol: "https",
  ),

  "https://user@bitbucket.org/user/repo": GitUrlParseResult(
    port: null,
    resource: "bitbucket.org",
    user: "user",
    pathname: "/user/repo",
    protocol: "https",
  ),

  "https://user@organization.git.cloudforge.com/name.git": GitUrlParseResult(
    port: null,
    resource: "organization.git.cloudforge.com",
    user: "user",
    pathname: "/name.git",
    protocol: "https",
  ),

  "https://token:x-oauth-basic@github.com/owner/name.git": GitUrlParseResult(
    port: null,
    resource: "github.com",
    user: "token:x-oauth-basic",
    pathname: "/owner/name.git",
    protocol: "https",
    token: "token",
  ),

  "https://x-token-auth:token@bitbucket.org/owner/name.git": GitUrlParseResult(
    port: null,
    resource: "bitbucket.org",
    user: "x-token-auth:token",
    pathname: "/owner/name.git",
    protocol: "https",
    token: "token",
  ),

  "/path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "file",
  ),

  "path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "",
    user: "",
    pathname: "path/to/repo.git",
    protocol: "file",
  ),

  "~/path/to/repo.git": GitUrlParseResult(
    port: null,
    resource: "",
    user: "",
    pathname: "~/path/to/repo.git",
    protocol: "file",
  ),

  "file:///path/to/repo.git/": GitUrlParseResult(
    port: null,
    resource: "",
    user: "",
    pathname: "/path/to/repo.git",
    protocol: "file",
  ),

  "git@host.xz:path/name.git": GitUrlParseResult(
    port: null,
    resource: "host.xz",
    user: "git",
    pathname: "path/name.git",
    protocol: "ssh",
  ),
};

void main() {
  group('all', () {
    INPUT.forEach((String url, GitUrlParseResult result) {
      test(url, () {
        expect(gitUrlParse(url), result);
      });
    });
  });
}
