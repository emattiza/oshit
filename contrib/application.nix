{python3Packages, ...}:
python3Packages.buildPythonApplication {
  src = ../.;
  pyproject = true;
  version = "0.2.0";
  pname = "oshit";
}
