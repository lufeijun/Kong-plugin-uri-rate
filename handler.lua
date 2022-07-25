---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by lufeijun1234.
--- DateTime: 2022/7/25 11:56 AM
---

local UriRate = {}
UriRate.PRIORITY = 1
UriRate.VERSION = '0.0.1'

local kong = kong



function UriRate:access(conf)
    local allow_uris = conf.allow_uri
    local uri = ngx.var.request_uri

    local findNum = allow_uris:find( uri )


    -- 如果不在白名单中，直接返回
    if not findNum then
        headers = {}
        headers['content-type'] = "application/json;charset=utf-8"
        return kong.response.exit(429,'{"status":1,"message":"频率超限","values":{}}',headers)
    end


end



return UriRate
