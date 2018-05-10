class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.datetime :datetime
      t.string :attendees
    end
  end
end
