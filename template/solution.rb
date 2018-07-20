class Repository
  def before_commit
  end

  def commit
    before_commit
    puts 'Committing Repository'
    after_commit
  end

  def after_commit
  end
end

class UserRepository < Repository
  def before_commit
    puts 'Before Commit'
  end

  def after_commit
    puts 'After Commit'
  end
end
