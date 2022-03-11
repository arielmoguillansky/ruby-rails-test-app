class RenameTypeToPrescriptiontype < ActiveRecord::Migration[7.0]
  def change
    rename_column :prescriptions, :type, :prescriptionType
  end
end
