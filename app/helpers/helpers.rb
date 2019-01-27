class Helpers

  def self.current_user(session)#represents the hash
    @user = User.find_by_id(session[:user_id])
  end

  def self.is_logged_in?(session)# represents the hash
    !! (session[:user_id])#if session hash has a user_id. #!! double negative and letting there be a true/false outcome. a single ! what be looking for the negation of, but since we want to verify double !! does the trick.
  end
end
