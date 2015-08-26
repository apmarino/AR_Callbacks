require_relative('farm_time')
require_relative('../models/pig')
require_relative('../models/cow')
require_relative('../models/sheep')
require_relative('../models/human')

require 'pry'


class Farm

  def initialize
    @time = FarmTime.new
  end

  def run
    while @time.day < 3
      @time.another_day_passes

      case @time.day
      when 1
        Person.create({name: "James", age: 29, sex:"Male", breed:"Human"})
        Person.create({name: "Julie", age: 30, sex:"Female", breed:"Human"})
        Pig.create({name:"Daryl", age: 2, sex: "Male", breed:"Berkshire"})
        Pig.create({name:"Helen", age: 2, sex: "Female", breed:"Berkshire"})
        Cow.create({name:"Suzie", age: 1, sex: "Female", breed:"Dwarf Lulu"})
        Cow.create({name:"Sherman", age: 1, sex: "Female", breed:"Dwarf Lulu"})
      when 2
        helen = Pig.find_by({name: "Helen"})
        helen.give_birth(8)
        suzie = Cow.find_by({name:"Suzie"})
        suzie.give_birth(1)
        julie = Person.find_by({name:"Julie"})
        julie.update({age: 31})
      when 3
        Sheep.create({name:"Brooklyn", age: 2, sex: "Female", breed: "old Kerry Hill"})
        Sheep.create({name:"Charlotte", age: 1, sex: "Female", breed: "old Kerry Hill"})
        sherman = Cow.find_by({name:"Sherman"})
        sherman.destroy
        binding.pry
      end

    end
  end

end

