require_relative('../lib/connection')

class Person < ActiveRecord::Base
  before_validation :is_old, on: [:create, :update]
  
  private
  def is_old
    self.name = self.name < " old"
  end
  
end