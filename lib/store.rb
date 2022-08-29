class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality : { only_integer: true }
  validate :carries_either_stock
end

  def carries_either_stock
    if mens_apparel.blank? && womens_apparel.blank?
      errors.add(:mens_apparel, "at least one kind of apparel must be carried")
    end
  end
