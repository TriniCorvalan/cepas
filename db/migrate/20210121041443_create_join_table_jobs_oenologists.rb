class CreateJoinTableJobsOenologists < ActiveRecord::Migration[5.2]
  def change
    create_join_table :jobs, :oenologists do |t|
      t.references :job, foreign_key: true
      t.references :oenologist, foreign_key: true
    end
  end
end
