class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.datetime :signup_date

      t.timestamps null: false
    end
  end
end
