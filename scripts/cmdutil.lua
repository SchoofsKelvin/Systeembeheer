#!/usr/bin/lua

local function generator(flags)
	return function(...)
		local args = {...}
		local res,i = {},1
		while i <= #args do
			local a = args[i]
			if a:sub(1,1) == "-" then
				local f = a:sub(2)
				local n = flags[f] or 0
				if #args-i < n then
					error("Flag "..f.." requires "..n.." argument(s)",0)
				end local r = {}
				for j=1,n do
					r[j] = args[j+i]
				end i = i + n
				res[f] = r
			else
				res[#res+1] = a
			end i = i + 1
		end
		return res
	end
end

--[[
if ... then
	local gen = generator({a=0,b=1,c=2})
	local res = gen(...)
	for k,v in pairs(res) do
		if type(v) == "table" then
			if #v == 0 then
				print(k,"=","{ }")
			else
				print(k,"=","{ '"..table.concat(v,"', '").."' }")
			end
		else
			print(k,"=",v)
		end
	end
end]]

return generator