class Article < ActiveRecord::Base
  belongs_to :author
  
  include Tire::Model::Search  
  
  def update_tire_index
    self.tire.update_index #if self.published?
  end
  
end
