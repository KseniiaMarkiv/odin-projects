module Users::GreetingHelper
  def time_based_greeting(user)
    time_of_day = Time.now.hour
    if time_of_day < 12
      "Good morning, #{user.username}!"
    elsif time_of_day < 18
      "Good afternoon, #{user.username}!"
    else
      "Good evening, #{user.username}!"
    end
  end
end
