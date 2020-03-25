# Bazel target definition for the gravel-pit color-theme(s)

# load jsonnet_to_json rule
load("@io_bazel_rules_jsonnet//jsonnet:jsonnet.bzl", "jsonnet_to_json")

# create jsonnet to json target
jsonnet_to_json(
  name = "gravel-pit",
  src = "gravel-pit-color-theme.jsonnet",
  outs = ["gravel-pit-color-theme.json"]
)
