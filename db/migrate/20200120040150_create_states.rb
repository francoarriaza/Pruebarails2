class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
