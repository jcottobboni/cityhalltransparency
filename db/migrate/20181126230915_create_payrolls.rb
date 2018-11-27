class CreatePayrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :payrolls do |t|
      t.integer :registration
      t.string :name
      t.references :jobrole, foreign_key: true
      t.references :workspace, foreign_key: true
      t.references :department, foreign_key: true
      t.date :admission_date
      t.string :admission_type
      t.string :city_hall_secretary_name
      t.integer :year
      t.integer :month
      t.integer :city_id

      t.timestamps
    end
  end
end
