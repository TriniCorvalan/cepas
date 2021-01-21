class DropEvaluationsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :evaluations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
