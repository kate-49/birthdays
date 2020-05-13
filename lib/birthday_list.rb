require 'date'

class BirthdayList
attr_accessor :today

  def initialize
    @today = (Time.now).to_date
    @birthdays = []
    @birthdays_today = {}
    @birthdays << {"Person one" => Date.parse('1990-05-13')}
    @birthdays << { "Bob Bobcat" => Date.parse('15-01-1999')}
    @birthdays << { "Generic Person" => Date.parse('01-01-2001')}
    @birthdays << { "New Person" => Date.parse('13-05-2010')}
  end
  
  def print_all_birthdays
    ans = []
    @birthdays.each {|hash|
      hash.each { |name, date|
        ans << "#{name} was born on #{date}"
      }
    }
    return ans
  end

  def birthday_is_today
    @birthdays.each {|hash|
      hash.each do |name, date|
        if (date.day == today.day) && (date.month == today.month)
          @birthdays_today[name] = (today.year - date.year)
        end
      end
    }
     array = @birthdays_today.keys
     array.join(", ")
  end

  def print_todays_birthdays
    ans = []
    @birthdays_today.each {|name, age|
      ans << "#{name} has their birthday today, they are #{age} years old!"
  }
    ans.join(" ")
  end
 end
