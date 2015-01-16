class CreatePerfiles < ActiveRecord::Migration
  def change
    create_table :perfiles do |t|
    t.string :user_id, :null => false
    t.string :nombre
    t.string :apellidos
    t.string :sexo
    t.date :fecha_nacimiento
    t.string :ciudad

      t.timestamps null: false
    end
  end
end
