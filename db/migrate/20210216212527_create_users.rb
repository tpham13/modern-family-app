class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

# Note: use password_digest instead of password to bcrypt know to use
# encrypt User's password using the process called 'salt' to hash and encrypt. 
