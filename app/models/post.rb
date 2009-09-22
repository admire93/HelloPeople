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
      else 
        Post.find(params[:id])
    end
  end
  
end
