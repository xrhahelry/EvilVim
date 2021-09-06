local g = vim.g

-- Create default mappings
g.NERDCreateDefaultMappings = 1

-- Add spaces after comment delimiters by default
g.NERDSpaceDelims = 1

-- Use compact syntax for prettified multi-line comments
g.NERDCompactSexyComs = 1

-- Align line-wise comment delimiters flush left instead of following code indentation
g.NERDDefaultAlign = 'left'

-- Set a language to use its alternate delimiters by default
g.NERDAltDelims_java = 1

-- Add your own custom formats or override the defaults
g.NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

-- Allow commenting and inverting empty lines (useful when commenting a region)
g.NERDCommentEmptyLines = 1

-- Enable trimming of trailing whitespace when uncommenting
g.NERDTrimTrailingWhitespace = 1

-- Enable NERDCommenterToggle to check all selected lines is commented or not 
g.NERDToggleCheckAllLines = 1

-- Remapping default keymaps
vim.api.nvim_set_keymap('n', '<Leader>/', '<plug>NERDCommenterToggle', {noremap = true})
vim.api.nvim_set_keymap('v', '<Leader>/', '<plug>NERDCommenterToggle', {noremap = true})
