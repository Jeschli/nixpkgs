
with import <nixpkgs> {};

rustPlatform.buildRustPackage rec {
  pname = "stringliner";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "0mbi";
    repo = "stringliner";
    rev = "v${version}";
    sha256 = "183hwp1lxdfaj62masvjb3b5k34vjy6xblm9kfkmsp5rff0blgzr";
  };

  cargoSha256 = "0wvhqdkp0ma6yzpyyv3mkd1dgal3pna0bjm5xkalv0kkipyj5jn7";

  meta = {
    description = "It inlines stuff as strings. Supported languages: C, golang, python, rust.";
    homepage = "https://github.com/0mbi/stringliner";
    maintainers = [ maintainers.0mbi ];
    license = licenses.mit;
    platforms = platforms.unix;
  };


}
