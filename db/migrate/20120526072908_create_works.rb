class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :person
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
    add_index :works, :person_id
  end
end
