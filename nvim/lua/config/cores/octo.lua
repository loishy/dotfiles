local present, octo = pcall(require, "cmp")

if not present then return end

octo.setup({
  default_remote = {"upstream", "origin"}, -- order to try remotes
  reaction_viewer_hint_icon = "", -- marker for user reactions
  user_icon = " ", -- user icon
  timeline_marker = "", -- timeline marker
  timeline_indent = "2", -- timeline indentation
  right_bubble_delimiter = "", -- Bubble delimiter
  left_bubble_delimiter = "", -- Bubble delimiter
  github_hostname = "", -- GitHub Enterprise host
  snippet_context_lines = 4, -- number or lines around commented lines
  file_panel = {
    size = 10, -- changed files panel rows
    use_icons = true -- use web-devicons in file panel
  },
  mappings = {
    issue = {
      close_issue = "<leader>ic", -- close issue
      reopen_issue = "<leader>io", -- reopen issue
      list_issues = "<leader>il", -- list open issues on same repo
      reload = "<C-r>", -- reload issue
      open_in_browser = "<C-b>", -- open issue in browser
      copy_url = "<C-y>", -- copy url to system clipboard
      add_assignee = "<leader>aa", -- add assignee
      remove_assignee = "<leader>ad", -- remove assignee
      create_label = "<leader>lc", -- create label
      add_label = "<leader>la", -- add label
      remove_label = "<leader>ld", -- remove label
      goto_issue = "<leader>gi", -- navigate to a local repo issue
      add_comment = "<leader>ca", -- add comment
      delete_comment = "<leader>cd", -- delete comment
      next_comment = "]c", -- go to next comment
      prev_comment = "[c", -- go to previous comment
      react_hooray = "<leader>rp", -- add/remove 🎉 reaction
      react_heart = "<leader>rh", -- add/remove ❤️ reaction
      react_eyes = "<leader>re", -- add/remove 👀 reaction
      react_thumbs_up = "<leader>r+", -- add/remove 👍 reaction
      react_thumbs_down = "<leader>r-", -- add/remove 👎 reaction
      react_rocket = "<leader>rr", -- add/remove 🚀 reaction
      react_laugh = "<leader>rl", -- add/remove 😄 reaction
      react_confused = "<leader>rc" -- add/remove 😕 reaction
    },
    pull_request = {
      checkout_pr = "<leader>po", -- checkout PR
      merge_pr = "<leader>pm", -- merge PR
      list_commits = "<leader>pc", -- list PR commits
      list_changed_files = "<leader>pf", -- list PR changed files
      show_pr_diff = "<leader>pd", -- show PR diff
      add_reviewer = "<leader>va", -- add reviewer
      remove_reviewer = "<leader>vd", -- remove reviewer request
      close_issue = "<leader>ic", -- close PR
      reopen_issue = "<leader>io", -- reopen PR
      list_issues = "<leader>il", -- list open issues on same repo
      reload = "<C-r>", -- reload PR
      open_in_browser = "<C-b>", -- open PR in browser
      copy_url = "<C-y>", -- copy url to system clipboard
      add_assignee = "<leader>aa", -- add assignee
      remove_assignee = "<leader>ad", -- remove assignee
      create_label = "<leader>lc", -- create label
      add_label = "<leader>la", -- add label
      remove_label = "<leader>ld", -- remove label
      goto_issue = "<leader>gi", -- navigate to a local repo issue
      add_comment = "<leader>ca", -- add comment
      delete_comment = "<leader>cd", -- delete comment
      next_comment = "]c", -- go to next comment
      prev_comment = "[c", -- go to previous comment
      react_hooray = "<leader>rp", -- add/remove 🎉 reaction
      react_heart = "<leader>rh", -- add/remove ❤️ reaction
      react_eyes = "<leader>re", -- add/remove 👀 reaction
      react_thumbs_up = "<leader>r+", -- add/remove 👍 reaction
      react_thumbs_down = "<leader>r-", -- add/remove 👎 reaction
      react_rocket = "<leader>rr", -- add/remove 🚀 reaction
      react_laugh = "<leader>rl", -- add/remove 😄 reaction
      react_confused = "<leader>rc" -- add/remove 😕 reaction
    },
    review_thread = {
      goto_issue = "<leader>gi", -- navigate to a local repo issue
      add_comment = "<leader>ca", -- add comment
      add_suggestion = "<leader>sa", -- add suggestion
      delete_comment = "<leader>cd", -- delete comment
      next_comment = "]c", -- go to next comment
      prev_comment = "[c", -- go to previous comment
      select_next_entry = "]q", -- move to previous changed file
      select_prev_entry = "[q", -- move to next changed file
      close_review_tab = "<C-c>", -- close review tab
      react_hooray = "<leader>rp", -- add/remove 🎉 reaction
      react_heart = "<leader>rh", -- add/remove ❤️ reaction
      react_eyes = "<leader>re", -- add/remove 👀 reaction
      react_thumbs_up = "<leader>r+", -- add/remove 👍 reaction
      react_thumbs_down = "<leader>r-", -- add/remove 👎 reaction
      react_rocket = "<leader>rr", -- add/remove 🚀 reaction
      react_laugh = "<leader>rl", -- add/remove 😄 reaction
      react_confused = "<leader>rc" -- add/remove 😕 reaction
    },
    submit_win = {
      approve_review = "<C-a>", -- approve review
      comment_review = "<C-m>", -- comment review
      request_changes = "<C-r>", -- request changes review
      close_review_tab = "<C-c>" -- close review tab
    },
    review_diff = {
      add_review_comment = "<leader>ca", -- add a new review comment
      add_review_suggestion = "<leader>sa", -- add a new review suggestion
      focus_files = "<leader>e", -- move focus to changed file panel
      toggle_files = "<leader>b", -- hide/show changed files panel
      next_thread = "]t", -- move to next thread
      prev_thread = "[t", -- move to previous thread
      select_next_entry = "]q", -- move to previous changed file
      select_prev_entry = "[q", -- move to next changed file
      close_review_tab = "<C-c>", -- close review tab
      toggle_viewed = "<leader><leader>" -- toggle viewer viewed state
    },
    file_panel = {
      next_entry = "j", -- move to next changed file
      prev_entry = "k", -- move to previous changed file
      select_entry = "<cr>", -- show selected changed file diffs
      refresh_files = "R", -- refresh changed files panel
      focus_files = "<leader>e", -- move focus to changed file panel
      toggle_files = "<leader>b", -- hide/show changed files panel
      select_next_entry = "]q", -- move to previous changed file
      select_prev_entry = "[q", -- move to next changed file
      close_review_tab = "<C-c>", -- close review tab
      toggle_viewed = "<leader><leader>" -- toggle viewer viewed state
    }
  }
})
