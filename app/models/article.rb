class Article < ActiveRecord::Base
  belongs_to :author
  
  include Tire::Model::Search
  
  before_save :update_counter_cache
  
  def update_counter_cache
    self.author.update_attributes(:article_count => self.author.articles.count)  #if published?
  end
  
  def update_tire_index
    self.tire.update_index #if self.published?
  end
  
end
