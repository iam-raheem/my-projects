class Flat < ApplicationRecord
	validates :agreement_amount, :date_of_booking, :base_price, :area, presence: true
	validate :date_valid?

	def date_valid?
		if !date_of_booking.is_a?(Date)
			errors.add(:date_of_booking, 'must be a valid date') 
		end
	end
end