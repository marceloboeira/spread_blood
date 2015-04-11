class BloodType < EnumerateIt::Base
  associate_values :a_positive,  :a_negative,
                   :b_positive,  :b_negative,
                   :o_positive,  :o_negative,
                   :ab_negative, :ab_negative

  sort_by :translation
end
