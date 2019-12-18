require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    
  end

  def self.drop_table
    sql = <<-SQL
      DROP TABLE students
    SQL

    DB[:conn].execute(sql)
  end

  def save
  end

  def self.create
  end

  def self.new_from_db(row)
    new_stu = self.new
    new_stu.id = row[0]
    new_stu.name = row[1]
    new_stu.grade = row[2]
  end

  def self.find_by_name
  end

  def update
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


end
