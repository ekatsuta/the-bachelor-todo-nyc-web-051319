require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |contestants|
    contestants.each do |k,v|
      if v == "Winner"
        full_name = contestants["name"]
        winner = full_name.split(" ").first
      end
    end
  end
  winner
end


def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, array|
    array.each do |cast|
      cast.each do |k,v|
        if v == occupation
          name = cast["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0

  data.each do |season, array|
    array.each do |cast|
      cast.each do |k,v|
        if v == hometown
          counter += 1
        end
      end
    end
  end

  counter
end

def get_occupation(data, hometown)
  # code here

  data.each do |season, array|
    array.each do |cast|
      cast.each do |k,v|
        if v == hometown
          return occupation = cast["occupation"]

        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count = 0

  data[season].each do |cast|
    cast.each do |k,v|
      if k == "age"
        count += 1
        age += v.to_f
      end
    end
  end 
  answer = (age/count).round

  answer
end

def bachelor
  bachelor = {
  "season 30" => [
    {
      name:      "Beth Smalls",
      age:       "26",
      hometown:  "Great Falls, Virginia",
      occupation: "Nanny/Freelance Journalist",
      status:    "Winner"
    },
    {
      name:       "Becca Tilley",
      age:        "27",
      hometown:   "Shreveport, Louisiana",
      occupation: "Chiropractic Assistant",
      status:     "Eliminated Week 8"
    }
  ],
  "season 29" => [
    {
      name:      "Ashley Yeats",
      age:       "24",
      hometown:  "Denver, Colorado",
      occupation:"Dental Assitant",
      status:    "Winner"
    },
    {
      name:       "Sam Grover",
      age:        "29",
      hometown:   "New York, New York",
      occupation: "Entertainer",
      status:     "Eliminated Week 6"
    }
  ]
}
end
