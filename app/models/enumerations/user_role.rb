class UserRole < EnumerateIt::Base
  associate_values :guest, :regular, :root

  sort_by :translation
end
