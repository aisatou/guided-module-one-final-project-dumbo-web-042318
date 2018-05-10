class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :guest_id
      t.integer :planner_id
      t.integer :event_id
      t.boolean :rsvp, :default => true
    end
  end
end
