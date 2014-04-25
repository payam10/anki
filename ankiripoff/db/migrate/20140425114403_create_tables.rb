class CreateTables < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :first_name, :last_name
      t.timestamps
    end

    create_table :rounds do |t|
      t.string :feedback
      t.belongs_to :users
      t.belongs_to :decks
      t.belongs_to :guesses
    end

    create_table :guesses do |t|
      t.integer :correct_count
      t.belongs_to :cards
    end

    create_table :decks do |t|
      t.string :topic
      t.integer :card_count
    end

    create_table :cards do |t|
      t.string :question, :answer
      t.belongs_to :decks
    end
  end
end
