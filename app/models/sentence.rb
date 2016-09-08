class Sentence < ActiveRecord::Base
  validates_presence_of :sentence, :user
end
