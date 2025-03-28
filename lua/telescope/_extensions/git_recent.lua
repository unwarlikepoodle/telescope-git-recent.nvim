return require("telescope").register_extension {
  setup = function(ext_config, config)
    -- Optional: Handle extension-specific configuration here
  end,
  exports = {
    git_recent = require("telescope._extensions.git_recent_picker").git_recent,
  },
}
