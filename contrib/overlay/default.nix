(self: super: let
  packageOverrides = python-self: python-super: {
    textual = python-super.textual.overrideAttrs rec {
      dummyVer = "0.47.1";
      pname = "textual";
      name = "textual-${dummyVer}";
      version = "v${dummyVer}";
      src = super.fetchFromGitHub {
        owner = "Textualize";
        repo = "textual";
        rev = "refs/tags/v${dummyVer}";
        hash = "sha256-RFaZKQ+0o6ZvfZxx95a1FjSHVJ0VOIAfzkdxYQXYBKU=";
      };
    };
  };
in {
  python311 = super.python311.override {inherit packageOverrides;};
})
