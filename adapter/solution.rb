class ModernPrinter
  def initialize(legacy)
    @legacy = legacy
  end

  def print_info(msg)
    @legacy.print(msg, 'INFO')
  end

  def print_error(msg)
    @legacy.print(msg, 'ERROR')
  end
end

class LegacyPrinter
  def print(msg, level)
    puts "#{msg} #{level}"
  end
end
