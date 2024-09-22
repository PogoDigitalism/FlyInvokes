local Class = {}
Class.__index = Class

function Class.new()
	local self = setmetatable({}, Class)
	self.OnInvoke = nil :: (...any) -> (...any)
	
	return self
end
export type cls = typeof(Class.new(...))

function Class.Invoke(self: cls, ...)
	return self.OnInvoke(...)	
end

return Class
