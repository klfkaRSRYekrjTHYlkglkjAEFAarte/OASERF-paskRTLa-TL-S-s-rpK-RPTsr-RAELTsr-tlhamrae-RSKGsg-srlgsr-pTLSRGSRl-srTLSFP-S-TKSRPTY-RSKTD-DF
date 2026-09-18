local source = game:HttpGet("https://valenok-key-sys.wispbyte.app/loader")

if type(source) ~= "string" or source == "" then
    error("Valenok loader: empty response")
end

local fn, err = loadstring(source)

if not fn then
    error("Valenok loader compile error: " .. tostring(err))
end

return fn()