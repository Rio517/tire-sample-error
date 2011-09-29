class Author < ActiveRecord::Base
  has_many :articles
  
  include Tire::Model::Search
  
  def update_tire_index
    self.tire.update_index 
  end
end
