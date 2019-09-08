class CreatePhoros < ActiveRecord::Migration[5.2]
  def change
    create_table :phoros do |t|

      t.timestamps
    end
  end
end
