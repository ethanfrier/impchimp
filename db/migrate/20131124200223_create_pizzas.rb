class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|

    	t.string :name 
    	t.decimal :lat, :precision => 15, :scale => 10
    	t.decimal :lng, :precision => 15, :scale => 10

      t.timestamps


    end
  end
end
