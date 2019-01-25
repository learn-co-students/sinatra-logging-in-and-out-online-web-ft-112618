class Helpers
  def self.current_user(session) #This class method will take one arguement of the user's session
    @user = User.find_by_id(session[:user_id]) #This will set an instance variable equal to the object returned by calling the find_by_id method. The returned object is found by matching the user_id of the current session
  end        
          
  def self.is_logged_in?(session)
    !!session[:user_id]
  end
end