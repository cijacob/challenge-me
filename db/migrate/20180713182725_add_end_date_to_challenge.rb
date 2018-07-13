class AddEndDateToChallenge < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :end_date, :date
  end
end
