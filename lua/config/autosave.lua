local autosave = vim.api.nvim_create_augroup("autosave", { clear = true })
local timer = nil
local do_autosave = false
local silent = true

vim.api.nvim_create_user_command("ASToggle", function()
	if do_autosave == false then
		do_autosave = true
		print("Autosave: ON")
	else
		do_autosave = false
		print("Autosave: OFF")
	end
end, {})

vim.api.nvim_create_user_command("ASSilent", function()
	if silent == false then
		silent = true
		print("Autosave messages: OFF")
	else
		silent = false
		print("Autosave messages: ON")
	end
end, {})

vim.api.nvim_create_user_command("ASState", function()
	print(do_autosave)
end, {})

vim.api.nvim_create_autocmd({ "TextChangedI" }, {
	group = autosave,
	callback = function()
		if timer then
			timer:stop()
		end
		timer = vim.defer_fn(function()
			if do_autosave then
				if not silent then
					print("*insert autosave!")
				end
				vim.cmd([[silent! write]])
			end
		end, 3000)
	end
})

vim.api.nvim_create_autocmd({ "TextChanged" }, {
	group = autosave,
	callback = function()
		if timer then
			timer:stop()
		end
		timer = vim.defer_fn(function()
			if do_autosave then
				if not silent then
					print("*normal autosave!")
				end
				vim.cmd([[silent! write]])
			end
		end, 3000)
	end
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	group = autosave,
	callback = function()
		if do_autosave then
			if not silent then
				print("*insert_leave autosave!")
			end
			vim.cmd([[silent! write]])
		end
	end
})

