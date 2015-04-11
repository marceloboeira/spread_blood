class UsernameValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /^[\w-]+$/
      record.errors[attribute] << (options[:message] || "is not an valid username")
    end
  end
end
