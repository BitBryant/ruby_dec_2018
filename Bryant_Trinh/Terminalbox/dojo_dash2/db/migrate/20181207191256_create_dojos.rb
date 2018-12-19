class CreateDojos < ActiveRecord::Migration[5.2]
  def change
    create_table :dojos do |t|
      t.string :branch
      t.string :street
      t.string :state
      t.string :state

      t.timestamps
    end
  end
end
