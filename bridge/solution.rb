class AbstractPrinter
  def print(msg)
  end
end

class ConsolePrinter < AbstractPrinter
  def print(msg)
    puts msg
  end
end

class FilePrinter < AbstractPrinter
  def print(msg)
    File.open('file_printer.txt', 'w') do |f|
      f.write(msg)
    end
  end
end

class Logger
  def initialize(abstract_printer)
    @abstract_printer = abstract_printer
  end

  def log_msg(msg)
    @abstract_printer.print(msg)
  end
end
