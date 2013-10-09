class CreateAdis < ActiveRecord::Migration
  def change
    create_table :adis do |t|

      t.timestamps
    end
  end
end
