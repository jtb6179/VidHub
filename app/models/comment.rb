class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :video

    def user_name
        self.user.user_name
    end
    
    # def user_id
    #     self.user_id
    # end

end
