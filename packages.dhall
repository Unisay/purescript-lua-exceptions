let upstream-ps =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.9-20230715/packages.dhall
        sha256:ca2801f7422d563de4ea4524efe6fa290186d202067409bc9cf359bb23acdfc5

let upstream-lua =
      https://github.com/Unisay/purescript-lua-package-sets/releases/download/psc-0.15.9-20230706/packages.dhall
        sha256:de2604dd3797c479420a154955209e008fe2cd3fc8452a0bd4b32a2ca00a2ff6

in  upstream-ps // upstream-lua
