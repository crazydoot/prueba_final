class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :rfc
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :nombre_empresa

      t.timestamps
    end
  end
end
