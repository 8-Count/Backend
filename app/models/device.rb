class Device < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :program
end
