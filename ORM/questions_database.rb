require 'sqlite3'
require "singleton"

class QuestionsDatabase < SQLite3::QuestionsDatabase
    include Singleton

    def intitialize
        super(questions.db)
        self.type_translation = true
        self.results_as_hash
    end
end

class Users

    def intitialize(options)
        @id = options['id']
        @fname = options['fname']
        @lname = options['lname']
    end
end

class Questions

    def intitialize(options)
        @id = options['id']
        @title = options['title']
        @body = = options['body']
        @author_id = = options['auther_id']
    end
end

class QuestionFollows

    def intitialize(options)
        @id = options['id']
        @user_id = options['user_id']
        @question_id = options['question_id']
    end
end

class replies

    def initialize(options)
        @id = options['id']
        @question_id = options['question_id']
        @parent_reply_id = options['parent_reply_id']
        @author_id = options['author_id']
        @body = options['body']
    end
end

class QuestionLikes

    def initialize(options)
        @id = options['id']
        @user_id = options['user_id']
        @question_id = options['question_id']
    end
end


class Tags

    def initialize(options)
        @tags = options['tags']
    end
end

class QuestionTags

    def initialize(options)
        @id = = options['id']
        @question_id = options['question_id']
        @tag_id = options['tag_id']
    end
end
