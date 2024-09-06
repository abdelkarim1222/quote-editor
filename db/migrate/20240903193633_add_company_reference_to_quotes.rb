class AddCompanyReferenceToQuotes < ActiveRecord::Migration[7.2]
  def change
    add_reference :quotes, :company, foreign_key: true, null: true
  end
end
