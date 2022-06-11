-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = '~/Desktop/Org/Agenda/*',
  org_default_notes_file = '~/Desktop/Org/Notes.org',
})

require("org-bullets").setup {
  symbols = { "◉", "○", "✸", "✿" }
}
