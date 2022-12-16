local redis = require "resty.redis"
local red = redis:new()

red:set_timeouts(1000, 1000, 1000)

local ok, err = red:connect("redis", 6379)

if not ok then
  ngx.log(ngx.STDERR, err)
  ngx.exit(ngx.OK)
  return
end

ngx.log(ngx.STDERR, ngx.var.host .. ":" .. ngx.var.server_port .. ngx.var.request_uri)

ngx.exit(ngx.HTTP_BAD_REQUEST)
