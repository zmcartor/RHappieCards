class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :user, index: true
      t.references :background, index: true
      t.text :message

      t.timestamps
    end
  end
end
