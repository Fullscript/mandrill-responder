require 'resque'

module MandrillCallbacks
  @queue = :mandrill

  # no perform method because we are only using this for queueing
end