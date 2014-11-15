class Program < ActiveRecord::Base
  belongs_to :sport
  belongs_to :organization
end
