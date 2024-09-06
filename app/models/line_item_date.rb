class LineItemDate < ApplicationRecord
  belongs_to :quote
  has_many :line_items, dependent: :destroy
  validates :date, presence: true, uniqueness: { scope: :quote_id }
  def previous_date
    quote.line_item_dates.ordered.where("date < ?", date).last
  end
  scope :ordered, -> { order(date: :asc) }
end
