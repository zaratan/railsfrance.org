class DropQuestionAnswerRelatedTable < ActiveRecord::Migration
  def up
    drop_table :answers
    drop_table :questions
    drop_table :taggings
    drop_table :tags
    drop_table :votings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
