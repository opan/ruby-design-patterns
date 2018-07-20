class ModernPrinter
  def initialize(legacy)
    @legacy = legacy
  end

  def print_with_magic
    puts 'Magic'
    @legacy.print
  end
end

class LegacyPrinter
  def print
    puts 'Old Print'
  end
end
