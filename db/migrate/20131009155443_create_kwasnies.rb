class CreateKwasnies < ActiveRecord::Migration
  def change
    create_table :kwasnies do |t|
      t.string :imie
      t.integer :ilewypil
      t.boolean :czyjesttakbardzochorynajakiegowyglada

      t.timestamps
    end
  end
end
