def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = nil
  data[season].each do |contestants|
    contestants.each do |key, value|
      if value == "Winner"
        winner_name = contestants["name"].split()[0]
      end
    end
  end
  winner_name
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = nil
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |key, value|
        if value == occupation
          contestant_name = contestants["name"]
        end
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |key, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |key, value|
        if value == hometown
          occupation << contestants.fetch("occupation")
        end
      end
    end
  end
  occupation.first
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  average_age = nil
  data[season].each do |contestants|
    ages << contestants["age"].to_i
  end
  average_age = ((ages.reduce(:+))/(ages.length.to_f)).round
  average_age
end
