require './lib/birthday_list.rb'

describe BirthdayList do

  it 'can return birthdays stored in hash' do
    expect(subject.print_all_birthdays).to eq ["Person one was born on 1990-05-13",
      "Bob Bobcat was born on 1999-01-15", "Generic Person was born on 2001-01-01",
       "New Person was born on 2010-05-13"]
  end

  it 'can return names of people whos birthday is today' do
    expect(subject.birthday_is_today).to eq "Person one, New Person"
  end

  it 'can nicely print birthdays and ages' do
    subject.birthday_is_today
    expect(subject.print_todays_birthdays).to eq("Person one has their birthday today, they are 30 years old! New Person has their birthday today, they are 10 years old!")
  end

end
