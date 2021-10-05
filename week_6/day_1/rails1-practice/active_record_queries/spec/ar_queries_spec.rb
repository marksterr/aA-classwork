require 'rspec'
require 'rails_helper'
require 'spec_helper'

require_relative '../problems/ar_queries.rb'

describe 'lowest_score' do
  subject { lowest_score.as_json }

  let(:expected_result) {
    [{id: 1158, title: "Police Academy: Mission to Moscow" }]
    .map{ |el| el.stringify_keys }    
  } 

  it 'retrieves the correct information' do
    expect(subject).to contain_exactly(*expected_result)
  end
  
  it 'hits the database exactly once' do
    expect{ subject }.to make_database_queries(count: 1)
    expect(subject).to contain_exactly(*expected_result)
  end
end

describe 'wesley_movies' do
  subject { wesley_movies.as_json }

  let(:expected_result) {
    [
      { id: 369, title: "Demolition Man", score: 6.1 },
      { id: 497, title: "U.S. Marshals", score: 6.2 },
      { id: 213, title: "Blade", score: 6.7 },
      { id: 1654, title: "Drop Zone", score: 5.5 },
      { id: 1585, title: "New Jack City", score: 6.1 },
      { id: 1243, title: "Money Train", score: 5.1 },
      { id: 1191, title: "Passenger 57", score: 5.4 },
      { id: 1277, title: "Murder at 1600", score: 6.0 },
      { id: 1294, title: "To Wong Foo, Thanks for Everything, Julie Newmar", score: 5.5 },
      { id: 880, title: "Rising Sun", score: 6.0 },
      { id: 1054, title: "Fan, The", score: 5.4 },
      { id: 751, title: "White Men Can't Jump", score: 6.2 }
    ].map{ |el| el.stringify_keys }
  }

  it 'retrieves the correct information' do
    expect(subject).to contain_exactly(*expected_result)
  end
  
  it 'hits the database exactly once' do
    expect{ subject }.to make_database_queries(count: 1)
    expect(subject).to contain_exactly(*expected_result)
  end
end

describe 'meg_movies' do
  subject { meg_movies.as_json }

  let(:expected_result) {
    [ { id: 83, title: "Top Gun", yr: 1986 },
      { id: 661, title: "Innerspace", yr: 1987 },
      { id: 1363, title: "Presidio, The", yr: 1988 },
      { id: 1532, title: "D.O.A.", yr: 1988 },
      { id: 104, title: "When Harry Met Sally...", yr: 1989 },
      { id: 503, title: "Doors, The", yr: 1991 },
      { id: 181, title: "Sleepless in Seattle", yr: 1993 },
      { id: 954, title: "I.Q.", yr: 1994 },
      { id: 1342, title: "When a Man Loves a Woman", yr: 1994 },
      { id: 1826, title: "Restoration", yr: 1995 },
      { id: 658, title: "French Kiss", yr: 1995 },
      { id: 452, title: "Courage Under Fire", yr: 1996 },
      { id: 825, title: "Addicted to Love", yr: 1997 },
      { id: 1016, title: "Anastasia", yr: 1997 },
      { id: 1240, title: "Hurlyburly", yr: 1998 },
      { id: 255, title: "City of Angels", yr: 1998 },
      { id: 224, title: "You've Got Mail", yr: 1998 },
      { id: 1413, title: "Hanging Up", yr: 2000 }
    ].map{ |el| el.stringify_keys }
  }

  let(:expected_yrs) { subject.map { |el| el['yr'] } }

  it 'retrieves the correct information' do
		expect(expected_yrs).to eq(expected_yrs.sort)
		expect(subject).to contain_exactly(*expected_result)
  end
  
  it 'hits the database exactly once' do
    expect{ subject }.to make_database_queries(count: 1)
    expect(expected_yrs).to eq(expected_yrs.sort)
    expect(subject).to contain_exactly(*expected_result)
  end
end

describe 'susan_supporting_roles' do
  subject { susan_supporting_roles.as_json }

  let(:expected_result) {
    [
      { id: 575, title: "Bull Durham" },
      { id: 493, title: "Witches of Eastwick, The" },
      { id: 193, title: "Rocky Horror Picture Show, The" },
      { id: 1528, title: "Twilight" },
      { id: 1608, title: "Hunger, The" },
      { id: 1788, title: "Atlantic City" },
      { id: 1377, title: "Cradle Will Rock" },
      { id: 756, title: "Stepmom" }
    ].map{ |el| el.stringify_keys }
  }  

  it 'retrieves the correct information' do
    expect(subject).to contain_exactly(*expected_result)
  end
  
  it 'hits the database exactly once' do
    expect{ subject }.to make_database_queries(count: 1)
    expect(subject).to contain_exactly(*expected_result)
  end
end

describe 'biggest_cast' do
  subject { biggest_cast.as_json }
  
  let(:expected_result) {
    [
      {id: 373, title: 'Fear and Loathing in Las Vegas'},
      {id: 280, title: 'Star Trek: Generations'},
      {id: 1153, title: '200 Cigarettes'}
    ].map{ |el| el.stringify_keys }
  }

  it 'retrieves the correct information' do
    expect(subject).to contain_exactly(*expected_result)
  end
  
  it 'hits the database exactly once' do
    expect{ subject }.to make_database_queries(count: 1)
    expect(subject).to contain_exactly(*expected_result)
  end
end