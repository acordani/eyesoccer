class Event < ActiveRecord::Base

	self.inheritance_column = nil

	belongs_to :user
	belongs_to :trainingtype

	TYPES = %w(Entrainement Match Tournoi)
end
