package = "kong-plugin-uri-rate"

version = "0.1.0-1" 
local pluginName = package:match("^kong%-plugin%-(.+)$")

supported_platforms = {"linux"}
source = {
  url = "git@github.com:lufeijun/Kong-plugin-uri-rate.git",
  tag = "v1.0.0"
}

description = {
  summary = "limit all uri except allow_uri",
  homepage      ="https://github.com/lufeijun/Kong-plugin-uri-rate.git",
  maintainer    ="lufeijun_1234@126.com",
  license       ="MIT"
}

dependencies = {}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "./handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "./schema.lua",
  }
}
