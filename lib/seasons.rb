module Seasons
  CA = {winter: ["Apple", "Orange", "Avacado"], spring: ["Pear", "Bannana", "Lemon"], summer: ["Cherry", "Watermelon", "Nectarine"], fall: ["Pear", "Bannana", "Lemon"]}.freeze
  TX = {winter: ["Apple", "Orange", "Avacado"], spring: ["Pear", "Bannana", "Lemon"], summer: ["Cherry", "Orange", "Nectarine"], fall: ["Pear", "Bannana", "Lemon"]}.freeze

  def in_season?(date, state)
    season = get_season(date)
    state = string_to_constant(state)

    state[season].include? name
  end

  def get_season(date)
    case
    when date.month <= 3
      :winter
    when date.month <= 6
      :spring
    when date.month <= 9
      :summer
    else
      :fall
    end
  end

  def string_to_constant(string)
    Seasons.const_get(string)
  end
end
