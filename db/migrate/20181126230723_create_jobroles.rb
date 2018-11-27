class CreateJobroles < ActiveRecord::Migration[5.2]
  def change
    create_table :jobroles do |t|
      t.string :name

      t.timestamps
    end
  end
end
