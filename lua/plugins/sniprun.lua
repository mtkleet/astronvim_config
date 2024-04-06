return {
  "michaelb/sniprun",
  build = "bash ./install.sh 1",
  cmd = "SnipRun",
  opts = {
    inline_messages = 0,
    display = { "NvimNotify" },
    borders = "single",
    display_options = { notification_timeout = 2500 },
    interpreter_options = { Python3_original = { error_truncate = "long" } },
  }
}
