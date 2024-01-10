{python3Packages, ...}:
python3Packages.buildPythonApplication {
  src = ../.;
  pyproject = true;
  version = "0.2.0";
  pname = "oshit";
  nativeBuildInputs = with python3Packages; [
    setuptools
  ];
  propagatedBuildInputs = with python3Packages; [
    textual
    httpx
    humanize
    xdg-base-dirs
  ];
}
