
DEPS = {

    "com_google_protobuf": {
        "rule": "http_archive",
        "url": "https://github.com/Asana/protobuf/archive/354b484e0c57915352cc079fc432889d27091cd3.zip",
        "strip_prefix": "protobuf-354b484e0c57915352cc079fc432889d27091cd3",
        "sha256": "14064dd6f5792f5f3ad0d75a1f1841b0d39b529a8dac041f6c630afce2502cf8",
    },


    # This binds the cc_binary "protoc" into
    # //external:protoc. Required by grpc++.
    "protoc": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protoc",
    },

    # Bind the protobuf proto_lib into //external.  Required for
    # compiling the protoc_gen_grpc plugin
    "protocol_compiler": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protoc",
    },

    # grpc++ expects "//external:protobuf"
    "protobuf": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protobuf",
    },

    # grpc++ expects "//external:protobuf_clib"
    "protobuf_clib": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protoc_lib",
    },

    "protobuf_headers": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protobuf_headers",
    },

}
