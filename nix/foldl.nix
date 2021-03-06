{ mkDerivation, base, bytestring, comonad, containers
, contravariant, criterion, doctest, hashable, mwc-random
, primitive, profunctors, semigroupoids, stdenv, text, transformers
, unordered-containers, vector, vector-builder
}:
mkDerivation {
  pname = "foldl";
  version = "1.4.8";
  src = ./..;
  libraryHaskellDepends = [
    base bytestring comonad containers contravariant hashable
    mwc-random primitive profunctors semigroupoids text transformers
    unordered-containers vector vector-builder
  ];
  testHaskellDepends = [ base doctest ];
  benchmarkHaskellDepends = [ base criterion ];
  description = "Composable, streaming, and efficient left folds";
  license = stdenv.lib.licenses.bsd3;
}
