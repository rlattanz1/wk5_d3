require 'sqlite3'
require "singleton"

class QuestionsDatabase < SQLite3::QuestionsDatabase
    include Singleton

    def intitialize
        
    end

end