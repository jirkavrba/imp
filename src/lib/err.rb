# module for easier "low-level" error handling
# every action using it should call Err.new
# Err.ed? to check whether any error occured
# Err.s   to get all errors as one string

module Err

  @@data = Array.new

  # log a message
  # e.g. "missing constant X"

  def self.<< msg
    @@data << nil
    @@data[-1] = msg
  end

  def self.s
    @@data.join("\n")
  end

  def self.new
    @@data = Array.new
  end

  def self.ed?
    @@data.any?
  end

end
