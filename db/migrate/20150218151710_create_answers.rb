class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
       t.string     'content'
      t.boolean     'is_picked', :default => false
      t.references  'question'
    end
  end
end
