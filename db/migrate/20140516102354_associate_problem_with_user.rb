class AssociateProblemWithUser < ActiveRecord::Migration
  def change
    change_table :problems do |t|
      t.belongs_to :user
    end
  end
end
