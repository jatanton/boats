class Boat < ActiveRecord::Base
  monetize :price_cents

  def ballast_ratio
    puts "Ballast: #{self.ballast}"
    puts "Displacement: #{self.displacement}"
    ballast_ratio = ((self.ballast.to_f / self.displacement.to_f) * 100).round(2)
  end

  # As an example, to find the D/L ratio of a 12,000-pound boat with a load waterline length of 28 feet,
  # you first divide 12,000 by 2,240 to find the boat’s displacement in long tons: 12,000 ÷ 2,240 = 5.36 long tons.
  # Then multiply 0.01 by 28 (0.01 x 28 = 0.28) and cube the result (0.28³ = 0.022).
  # Then divide the DLT by this number to find the D/L ratio: 5.36 ÷ 0.022 = 243.6.

  def displacement_length_ratio
    displacement_long_tons = (self.displacement * 2.2).to_f / 2240
    length_in_feet = self.lwl.to_f * 3.28
    denominator = ((0.01 * length_in_feet) * (0.01 * length_in_feet)) * (0.01 * length_in_feet)
    displacement_long_tons / denominator
    binding.pry
  end

end
