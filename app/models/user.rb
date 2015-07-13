class User < ActiveRecord::Base
    def self.login(params)
        if params[:uid].present? && params[:pwd].present?
            sql =<<-"EOS"
                SELECT * FROM users WHERE uid = '#{params[:uid]}' AND pwd = '#{params[:pwd]}'
            EOS
            return self.connection.execute(sql).first
        end
    end
end
