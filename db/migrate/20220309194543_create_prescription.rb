class CreatePrescription < ActiveRecord::Migration[7.0]
  def change
    create_table :prescriptions do |t|
      t.string :type
      t.timestamps
    end
  end
end
