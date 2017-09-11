class OrderPeople
  def initialize(people = {})
    @people = people
  end

  def sort_by! attribute = "name"
    attribute = attribute.to_sym
    @people = @people.sort_by { |k, v| v[attribute] }
    @people.to_h
  end

  def sort_by_age!
    @people = @people.sort_by { |k, v| v[:age] }
    @people.to_h
  end

  def sort_alphabetically_by_name!
    @people =  @people.sort_by { |k, v| v[:name] }
    @people.to_h
  end
end