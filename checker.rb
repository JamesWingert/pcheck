class Checker
  def check(password)
    if password.length < 7
      puts "Password must be at least 7 characters long"
      false
    elsif !password.match(/[a-zA-Z]/)
      puts "Password must contain at least one letter"
      false
    elsif !password.match(/[0-9]/)
      puts "Password must contain at least one number"
      false
    end
    true
  end
  
  def admin_check(password)
    if password.length < 10 || !password.match(/\W/)
      return false
    end
    check(password)
  end
end
