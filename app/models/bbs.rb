class BBS < ActiveRecord::Base
    def self.all
        sql = "SELECT * FROM bbs LEFT JOIN users ON bbs.writer = users.id ORDER BY bbs.created_at DESC"
        self.find_by_sql(sql, [])
    end
end
