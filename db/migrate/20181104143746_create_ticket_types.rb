class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|

      t.timestamps null: false
    end
  end
end
