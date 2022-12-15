local redis = require "resty.redis"
local red = redis:new()

return ngx.redirect("https://google.com", 302)
