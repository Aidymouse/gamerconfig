return {
	{
		"mfussenegger/nvim-dap",
		cmd="",
		opts={},
		keys={},
		config=function() end
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		cmd="",
		event="VeryLazy",
		deps={
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts={
			handlers={},
		},
		keys={},
	},
	{
		"rcarriga/nvim-dap-ui",
		cmd="",
		opts={},
		keys={
		},

		config=function()
			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.before.attach.dapui_config = function() dapui.open() end
			dap.listeners.before.launch.dapui_config = function() dapui.open() end
			dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
			dap.listeners.before.event_exited.dapui_config = function() dapui.close() end
		end
	},
}
