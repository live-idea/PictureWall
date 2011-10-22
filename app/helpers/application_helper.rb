module ApplicationHelper
  def greetings
    if(current_user)
      if(current_user.admin)
        val=current_user.email
        return "hello admin #{val}"
      else
         val=current_user.email
        return "hello  #{val}"
      end 
    else 
      return "Hello anonimus"
    end
  end
end
