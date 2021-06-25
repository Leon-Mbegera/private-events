class CreateTurnouts < ActiveRecord::Migration[6.1]
  def change
    create_table :turnouts do |t|
      t.integer :attendee_id
      t.integer :event_id

      t.timestamps
    end
  end
end
