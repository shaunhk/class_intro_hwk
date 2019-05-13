class Student
  attr_accessor :name, :cohort, :language

  def initialize(name, cohort, language)
    @name = name
    @cohort = cohort
    @language = language
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "#{@name}: I can talk! I can talk! I can talk!"
  end

  def language_love
    return "#{@name}: I love #{@language}!"
  end

end
