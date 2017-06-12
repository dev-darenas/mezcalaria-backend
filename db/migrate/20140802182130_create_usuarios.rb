class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :email
      t.string :password_digest
      t.references :rol, index: true

      t.timestamps
    end
  end
end
