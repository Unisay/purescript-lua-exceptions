{ name = "purescript-lua-exceptions"
, dependencies = [ "effect", "either", "maybe", "prelude" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, backend =
    ''
    pslua \
    --foreign-path . \
    --ps-output output \
    --lua-output-file dist/Effect_Exception.lua \
    --entry Effect.Exception 
    ''
}
