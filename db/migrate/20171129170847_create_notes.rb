# frozen_string_literal: true

class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :note
      t.string :champion
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
