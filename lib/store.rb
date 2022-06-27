class Store < ActiveRecord::Base
    has_many :employees

    validates :name, :annual_revenue, presence: true

    validates_length_of :name, within: 3..100, on: :create, message: "must be greater than 3"

    validates :annual_revenue, numericality: true

    def must_have_one
        if (!mens_apparel && !womens_apparel)
            errors.add(:mens_apparel, "Must have one type")
            errors.add(:womens_apparel, "Must have one type")
        end
    end

end
