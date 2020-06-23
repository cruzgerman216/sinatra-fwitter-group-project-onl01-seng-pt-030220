class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
     t.integer "username"
     t.integer "email"
     t.integer "password_digest"
    end
    create_table :tweets do |t|
     t.integer "content"
    end
  end
end
