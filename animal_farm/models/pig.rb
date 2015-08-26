require_relative('../lib/connection')

class Pig < ActiveRecord::Base
  def give_birth(num)
    i = 1
    while i <= num
      if rand <  0.5
        sex = "Male"
      else
        sex = "Female"
      end
      breed = self.breed
      Pig.create({name: "Piglet#{i}", age: 0, sex: "#{sex}", breed: "#{breed}" })
      i +=1
    end
  end
  after_create :pigs_female

  private
    def pigs_female
      binding.pry
      if self.sex == 'Female'
        puts self.name.upcase
      elsif self.sex == "Male"
        puts self.name.downcase
      end
        
    end
end