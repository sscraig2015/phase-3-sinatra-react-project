class Cocktail < ActiveRecord::Base
has_many :ingredients
has_many :comments

end