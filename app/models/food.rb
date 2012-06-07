class Food < ActiveRecord::Base
  attr_accessible :name

  include RocketPants::Cacheable
end
