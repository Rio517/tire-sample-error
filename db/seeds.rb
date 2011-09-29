# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.index.create
Author.index.create

3.times do |i|
  author = Author.create(:name => "name_#{i}")
  30.times do |i|
    Article.create(:title => "article_#{i}", :author => author)
  end
end


#make sure all is imported
Article.index.import Article.all
Author.index.import Author.all
