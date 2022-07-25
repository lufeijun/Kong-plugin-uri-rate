package = "kong-plugin-uri-rate"

version = "0.1.0-1" 
local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux", "macosx"}
source = {
  url = "git@github.com:lufeijun/Kong-plugin-uri-rate.git",
  tag = "0.1.0"
}

description = {
  summary = "Add uuid in request/response header"
}

dependencies = {}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "./handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "./schema.lua",
  }
}
