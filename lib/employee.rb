class Employee < ActiveRecord::Base
    belongs_to :store

    validates :first_name, presence:true
    validates :last_name, presence:true

    validates_inclusion_of :hourly_rate, in: ( 1..10 ), on: :create, message: "Please check your hourly rate input"

    validates_associated :store, on: :create



end
