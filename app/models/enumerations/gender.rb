class Gender < EnumerateIt::Base
  associate_values :male, :female, :other

  sort_by :translation
end
