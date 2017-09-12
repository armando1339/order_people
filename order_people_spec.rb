require 'rspec'
require './order_people'

RSpec.describe OrderPeople do
  let :people_hash do
    {
      tommy: { name: "Tommy", age: 34 },
      julian: { name: "Julian", age: 28 },
      peter: { name: "Peter", age:54 },
      justin: { name: "Justin", age: 27 },
      john: { name: "John", age: 20 },
      marck: { name: "Marck", age: 32 },
      peter: { name: "Peter", age: 22 },
      steve: { name: "Steve", age: 38 },
      bryan: { name: "Bryan", age: 24 }
    }
  end

  let :people { OrderPeople.new(people_hash) }

  describe '#sort_by' do
    it 'sort for name' do
      expect(people.sort_by('name').first[0]).to eq(:bryan)
    end

    it 'sort for age' do
      expect(people.sort_by('age').first[0]).to eq(:john)
    end
  end

  describe '#sort_alphabetically_by_name' do
    it { expect(people.sort_alphabetically_by_name.first[0]).to eq(:bryan) }
  end

  describe '#sort_by_age' do
    it { expect(people.sort_by_age.first[0]).to eq(:john) }
  end
end