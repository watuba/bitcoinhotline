class Answer < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :score1, :score2
end
