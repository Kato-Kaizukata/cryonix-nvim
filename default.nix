{
  pkgs ? import <nixpkgs> {},
}:

pkgs.vimUtils.buildVimPlugin {
  name = "cryonix-nvim";
  src  = pkgs.fetchFromGitea {
    domain = "codeberg.org";
    owner  = "Kato_Kaizukata";
    repo   = "cryonix-nvim";
    rev    = "e70eb957b0101f05a82cfddcba52eb6876f75b3e";
    hash   = "sha256-jtnxCElBHi3OlIwF+S7AsQD06G10U+EXK4XHcmPkYgE=";
  };
}
