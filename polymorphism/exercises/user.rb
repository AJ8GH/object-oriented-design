class User
  attr_reader :name, :bio, :age, :birth_year

  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @birth_year = Time.birth_year(age)
  end

  def authenticate(candidate_password)
    return true if candidate_password == password
    false
  end

  def profile
    "#{name}, born in #{birth_year}: #{bio}"
  end

  private

  attr_reader :password
end

class Time
  def birth_year(age)
    self.new.year - age
  end
end

# diagram
# user ->> birth_year
