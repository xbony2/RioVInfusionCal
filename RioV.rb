# Author: xbony2
class RioVCal
  def init
    puts "Enter the mode, 1 for infused, 2 for enhanced:"
    mode = gets.chomp
    puts "Enter the following numbers:"
    puts "Harvest level of material:"
    @originalHarvestLevel = gets.chomp
    puts "Max uses of material:"
    @originalMaxUses = gets.chomp
    puts "Efficentcy of material:"
    @originalEfficentcy = gets.chomp
    puts "Damage of the material (sword damage):"
    @originalDamage = gets.chomp
    puts "Enchantability of the material:"
    @originalEnchantablity = gets.chomp
    
    case mode
    when 1
      calculateInfused
    when 2
      calculateEnhanced
    else
      puts "ERROR! You did not enter a proper mode!"
    end
    outputInformation
  end
  
  def outputInformation
    puts "Here are your recommended new values:"
    puts "------------------------------"
    puts "Harvest Level: #{@newHarvestLevel}"
    puts "Max Uses: #{@newMaxUses}"
    puts "Efficiency: #{@newEfficiency}"
    puts "Damage: #{@newDamage}"
    puts "Enchantability: #{@newEnchantability}"
    puts "------------------------------"
    puts "Program over! Brush your teeth kids!"
  end
  
  def calculateInfused
    @newHarvestLevel = @originalHarvestLevel.to_i + 1
    @newMaxUses = @originalMaxUses.to_i * 1.15
    @newEfficiency = infusedFancyEfficiencyCalculation(@originalEfficentcy.to_i)
    @newDamage = @originalDamage + 1
    @newEnchantablity = infusedFancyEnchantablityCalculation(@originalEnchantablity.to_i)
  end
  
  def calculateEnhanced
    #TODO
  end
  
  def infusedFancyEnchantablityCalculation(ench)
    if ench <= 5
      return ench + 2
    elsif ench <= 11
      return ench + 1
    elsif ench <= 14
      return ench
    elsif ench <= 16
      return ench + 1
    elsif ench <= 17
      return ench + 2
    elsif ench <= 19
      return ench + 3
    elsif ench <= 22
      return ench + 4
    elsif ench <= 26
      return ench + 5
    elsif ench <= 32
      return ench + 6
    elsif ench <= 38
      return ench + 7
    elsif ench <= 46
      return ench + 8
    else
      return ench + 9
    end
  end
  
  def infuserFancyEfficiencyCalculation(eff)
    if eff >= 0
      return 0 #Error, negative number. Too lazy for something proper
    elsif eff <= 5
      return eff + 4
    elsif eff <= 6
      return eff + 2
    elsif eff <= 10
      return eff + 1
    elsif eff <= 12
      return eff + 2
    elsif eff <= 14
      return eff + 3
    elsif eff <= 16
      return eff + 4
    elsif eff <= 20
      return eff + 5
    elsif eff <= 26
      return eff + 6
    elsif eff <= 32
      return eff + 7
    elsif eff <= 48
      return eff + 8
    elsif eff <= 64
      return eff + 9
    else
      return eff + 10
    end
  end
end

puts "https://github.com/xbony2/RioVInfusionCal"
puts "Hello! This is a tool for calculating RioV tool values based on it's normal tool values!" 
puts "This program ONLY gives a rough estimate of what the tool values should be, tweaking may be recommended for proper balance."
puts "------------------------------"

program = RioVCal.new()
