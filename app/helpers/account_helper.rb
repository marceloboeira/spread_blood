module AccountHelper

  def gravatar_for(user, options = {})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}"
    classes = " "
    classes << options.delete(:class) if options.key? :class
    classes << " gravatar"
    id = options.delete(:id)
    image_tag(gravatar_url, title: user.username, class: classes.to_s, id: id)
  end

  def user_path user
    profile_path user.username
  end
end
