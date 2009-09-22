class Post < ActiveRecord::Base
  belongs_to :person
  has_many :tag
  def self.find_by_flag(params)
    person_id = Person.find_by_alias(params[:person_id]).id
    case params[:id]
      when 'me'
        then Post.find(:all, :conditions => {:person_id => person_id})
      when 'friends' 
        then Post.all
      when /[0-9]+/ 
        then [Post.find(params[:id])]
      else
        for tag in Tag.find(:all,:conditions => {:tag => params[:id]})
          posts = Post.find(:all,:conditions => {:id => tag.post_id,
                                                 :person_id => person_id})   
        end
        posts
    end
  end
  
end
