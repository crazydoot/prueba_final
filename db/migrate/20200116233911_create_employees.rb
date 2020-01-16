class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.name :string
      t.string :rfc
      t.string :position

      t.timestamps
    end
  end
end
