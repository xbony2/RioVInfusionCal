# Author: xbony2
puts "https://github.com/xbony2/RioVInfusionCal"
puts "Hello! This is a tool for calculating RioV infusion tool values based on normal tool values! Xbony2 made this because he wasn't smart enough to figure them out on his own! This program ONLY gives a rough estimate of what the tool values should be, tweaking may be recommended."
puts "------------------------------"

puts "Please input the harvest level"
originalHarvestLevel = gets.chomp
newHarvestLevel = originalHarvestLevel.to_i + 1

puts "Please input the Max Uses"
originalMaxUses = gets.chomp
maxUses = originalMaxUses.to_i
if maxUses <= 1499
  newMaxUses = maxUses + 100
end

if maxUses >= 1500
  newMaxUses = maxUses + 200
end

if maxUses >= 3000
  newMaxUses = maxUses + 400
end

if maxUses >= 4500
  newMaxUses = maxUses + 600
end

if maxUses >= 6000
  newMaxUses = maxUses + 800
end

puts "Please input the Efficiency"
originalEfficiency = gets.chomp
efficiency = originalEfficiency.to_i
if efficiency <= 5
  newEfficiency = efficiency + 4
end

if efficiency >= 6
  newEfficiency = efficiency + 2
end

if efficiency >= 10
  newEfficiency = efficiency + 1
end

if efficiency >= 12
  newEfficiency = efficiency + 2
end

if efficiency >= 14
  newEfficiency = efficiency + 3
end

if efficiency >= 16
  newEfficiency = efficiency + 4
end

puts "Please input the Damage"
originalDamage = gets.chomp
newDamage = originalDamage.to_i + 1

puts "Please input the Enchantability"
originalEnchantability = gets.chomp
enchantability = originalEnchantability.to_i
if enchantability <= 5
  newEnchantability = enchantability + 2
end

if enchantability >= 11
  newEnchantability = enchantability + 1
end

if enchantability >= 13
  newEnchantability = enchantability
end

if enchantability >= 14
  newEnchantability = enchantability + 1
end

if enchantability >= 16
  newEnchantability = enchantability + 2
end

if enchantability >= 17
  newEnchantability = enchantability + 3
end

if enchantability >= 19
  newEnchantability = enchantability + 4
end

if enchantability >= 22
  newEnchantability = enchantability + 5
end

if enchantability >= 26
  newEnchantability = enchantability + 6
end

if enchantability >= 32
  newEnchantability = enchantability + 7
end

if enchantability >= 38
  newEnchantability = enchantability + 8
end

puts "Here are your recommended new values:"
puts "------------------------------"
puts "Harvest Level: #{newHarvestLevel}"
puts "Max Uses: #{newMaxUses}"
puts "Efficiency: #{newEfficiency}"
puts "Damage: #{newDamage}"
puts "Enchantability: #{newEnchantability}"
puts "------------------------------"
puts "Program over! Brush your teeth kids!"