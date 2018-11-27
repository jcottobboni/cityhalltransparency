class ChangeTableDepartmentsAddFieldRegistration < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :registration, :integer
  end
end
