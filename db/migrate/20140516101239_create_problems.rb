class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.boolean :solved, default: false

      t.timestamps
    end
  end
end
