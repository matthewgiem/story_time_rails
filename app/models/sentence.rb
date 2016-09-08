class Sentence < ActiveRecord::Base
  belongs_to :story

  validates_presence_of :sentence, :user
end
