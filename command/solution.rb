class AbstractCommand
  def execute
    
  end
end

class CreateFile < AbstractCommand
  def initialize(file_name, msg)
    @file_name = file_name
    @msg = msg
  end

  def execute
    File.open(@file_name, 'w') do |f|
      f.write(@msg)
    end
  end
end

class PrintFile < AbstractCommand
  def initialize(file_name)
    @file_name = file_name
  end

  def execute
    File.open(@file_name, 'r') do |f|
      f.each_line { |l| puts l }
    end
  end
end

class DeleteFile < AbstractCommand
  def initialize(file_name)
    @file_name = file_name
  end

  def execute
    FileUtils.rm(@file_name)
  end
end

class CompositeCommand
  def initialize
    @commands = []
  end

  def add_command(command)
    @commands << command
  end

  def execute
    @commands.each { |c| c.execute }
  end
end
