class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|
      t.string    :category   ,null: false
      t.integer   :price      ,null: false

      t.timestamps null: false
    end
  end
end
