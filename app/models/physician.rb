class Physician < ActiveRecord::Base
    has_many :offices, :dependent => :destroy, inverse_of: :physician
    has_many :appointments, :dependent => :destroy
    accepts_nested_attributes_for :offices, reject_if: :all_blank, 
    allow_destroy: true
end
