local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"

local git_recent = function(opts)
  opts = opts or {}

  -- Run the git command to get recently committed files
  local git_command = { "git", "diff-tree", "--no-commit-id", "--name-only", "-r", "HEAD" }
  local handle = io.popen(table.concat(git_command, " "))
  local result = handle:read("*a")
  handle:close()

  local files = {}
  for file in result:gmatch("[^\r\n]+") do
    table.insert(files, file)
  end

  pickers.new(opts, {
    prompt_title = "Recently Committed Files",
    finder = finders.new_table {
      results = files,
      entry_maker = function(entry)
        return {
          value = entry,
          display = entry,
          ordinal = entry,
        }
      end,
    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        vim.cmd("edit " .. selection.value)
      end)
      return true
    end,
  }):find()
end

return {
  git_recent = git_recent,
}
