require 'active_record'

ActiveRecord::Base.establish_connection({
  :adapter => "postgresql",
  :database => "farm.db"
})

ActiveRecord::Base.logger = Logger.new(STDOUT)