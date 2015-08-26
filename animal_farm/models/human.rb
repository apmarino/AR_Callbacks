require_relative('../lib/connection')

class Person < ActiveRecord::Base
  before_validation :is_old, on: [:create, :update]
  after_destroy :humans_gone
  private
  def is_old
    if self.age > 20
      self.name = self.name << " old"
      binding.pry
    end
  end

  def humans_gone
    if Person.all == []
      Farm.delete_all
    end
  end

end