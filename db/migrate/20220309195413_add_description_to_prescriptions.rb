class AddDescriptionToPrescriptions < ActiveRecord::Migration[7.0]
  def change
    add_column :prescriptions, :description, :text
  end
end
