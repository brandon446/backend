class CreateMechanics < ActiveRecord::Migration[6.1]
  def change
    create_table :mechanics do |t|
      t.string :name
      t.integer :age
      t.string :expertise
      t.string :location
      t.integer :tel
    end
  end
end
