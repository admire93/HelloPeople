class SessionController < ApplicationController
  def index
    if request.put?
      p = Person.find_by_alias(params[:alias])
      if p && p.person?(params[:password])
        self.person = p
      else
        flash[:notice] = p ? :password : :alias
      end
    elsif request.delete?
      self.person = nil
    end
    redirect_to :back, :status => :found
  end
end
