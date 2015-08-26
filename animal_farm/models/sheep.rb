require_relative('../lib/connection')

class Sheep < ActiveRecord::Base

  def give_birth(num)
    i = 0
    while i < num
      if rand <  0.5
        sex = "Male"
      else
        sex = "Female"
      end
      breed = self.breed
      Sheep.create({name: "#{i}", age: 0, sex: "#{sex}", breed: "#{breed}" })
      i +=1
    end
  end

end