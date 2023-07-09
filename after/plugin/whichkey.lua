local status, wk = pcall(require, "which-key")
if (not status) then return end

local mappings = {
	q = ":q"
}

local opts = {
	prefix = '<leader>'
}

wk.register(mappings, opts)
