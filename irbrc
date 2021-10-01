require 'irb/ext/save-history'
require 'irb/completion'

IRB.conf[:SAVE_HISTORY] = 10000000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
