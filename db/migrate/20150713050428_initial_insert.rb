class InitialInsert < ActiveRecord::Migration

  def change
      User.create(:uid => "admin", :pwd => "admin")
      BBS.create(:writer => 1, :content => "1st test message.")
  end

end
