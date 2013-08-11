class CreateCallbacks < ActiveRecord::Migration
  def change
    create_table :callbacks do |t|
      t.string :hash
      t.string :to_email
      t.references :card

      t.timestamps
    end
  end
end
