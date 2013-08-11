class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
      t.references :category

      t.timestamps
    end
  end
end
