# Class that order a hash of people by name or age.
#
class OrderPeople
  def initialize(people = {})
    @people = people
  end

  def sort_by!(attribute = 'name')
    @people = sort_people_hash(attribute)
  end

  def sort_by(attribute = 'name')
    sort_people_hash(attribute)
  end

  def sort_by_age!
    @people = sort_people_hash('age')
  end

  def sort_by_age
    sort_people_hash('age')
  end

  def sort_alphabetically_by_name!
    @people = sort_people_hash('name')
  end

  def sort_alphabetically_by_name
    sort_people_hash('name')
  end

  private

  def sort_people_hash(attribute = '')
    people = @people.sort_by { |_k, v| v[attribute.to_sym] }
    people.to_h
  end
end
