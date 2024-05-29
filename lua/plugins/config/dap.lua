return {
	{
		'mfussenegger/nvim-dap',
		dependencies = {
			{
				'jay-babu/mason-nvim-dap.nvim',
				config = {
					handlers = {},
				},
				dependencies = {
					'mason.nvim',
				},
				cmd = { 'DapInstall', 'DapUninstall' },
			},
		},
		keys = {
			{
				'<Leader>db',
				function()
					require('dap').toggle_breakpoint()
				end,
				desc = 'DAP Toggle Breakpoint',
			},
			{
				'<Leader>dc',
				function()
					require('dap').continue()
				end,
				desc = 'DAP Continue',
			},
			{
				'<Leader>dC',
				function()
					require('dap').run_to_cursor()
				end,
				desc = 'DAP Run to Cursor',
			},
			{
				'<Leader>dg',
				function()
					require('dap').goto_()
				end,
				desc = 'DAP Go to Line (No Execute)',
			},
			{
				'<Leader>di',
				function()
					require('dap').step_into()
				end,
				desc = 'DAP Step Into',
			},
			{
				'<Leader>d<Down>',
				function()
					require('dap').down()
				end,
				desc = 'DAP Down',
			},
			{
				'<Leader>d<Up>',
				function()
					require('dap').up()
				end,
				desc = 'DAP Up',
			},
			{
				'<Leader>dl',
				function()
					require('dap').run_last()
				end,
				desc = 'DAP Run Last',
			},
			{
				'<Leader>dO',
				function()
					require('dap').step_out()
				end,
				desc = 'DAP Step Out',
			},
			{
				'<Leader>do',
				function()
					require('dap').step_over()
				end,
				desc = 'DAP Step Over',
			},
			{
				'<Leader>dp',
				function()
					require('dap').pause()
				end,
				desc = 'DAP Pause',
			},
			{
				'<Leader>dh',
				function()
					require('dap.ui.widgets').hover()
				end,
				desc = 'DAP Widgets',
			},
		},
	},
	{
		'nvim-telescope/telescope-dap.nvim',
		dependencies = { 'telescope.nvim', 'nvim-dap' },
		config = function()
			require('telescope').load_extension('dap')
		end,
		keys = {
			{
				'<leader>dm',
				function()
					require('telescope').extensions.dap.commands()
				end,
				desc = 'DAP Commands',
			},
			{
				'<leader>dB',
				function()
					require('telescope').extensions.dap.list_breakpoints()
				end,
				desc = 'DAP List Breakpoints',
			},
			{
				'<leader>dv',
				function()
					require('telescope').extensions.dap.variables()
				end,
				desc = 'DAP Variables',
			},
		},
	},
}
