class Event < ActiveRecord::Base
  belongs_to :user
  has_many :replies
  @sitter_name
  
  def status
    
  end
  
  def sitter_name
    replies.each do |r|
      if (r.answer == 'Yes')
        @sitter_name = r.user.first_name + " " + r.user.last_name
      end
    end
    @sitter_name
  end
end
