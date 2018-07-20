class Logger
  def log_msg(msg)
    puts msg
  end
end

class LoggerDecorator
  def initialize(logger = Logger.new)
    @logger = logger
  end

  def log_msg(msg)
    @logger.log_msg
  end
end

class EncryptedLogger < LoggerDecorator
  def log_msg(msg)
    @logger.log_msg(encrypt(msg))
  end

  def encrypt(msg)
    "#{msg} msg encrypted"
  end
end
