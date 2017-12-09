module Printer

  def self.display_identity(i)
    ["first_name", "last_name", "employee_id", "office"].each {|meta| puts "#{meta.capitalize}: #{i.send(meta)}" }
  end

  def self.display_offices_informations(collection)
    locations = display_offices_locations(collection)
    display_employees_per_office(locations, collection)
  end

  def self.display_offices_locations(collection)
    locations = []
    collection.each {|i| locations.push(i.office) unless locations.include?(i.office)}
    puts "Offices are located in #{locations}"
    locations
  end

  def self.display_employees_per_office(locations, collection)
    employees_per_office = []
    locations.each do |location|
      counter = 0
      collection.each {|interviewee| counter += 1 if interviewee.office == location }
      employees_per_office.push(counter.to_s)
    end
    puts "And have respectively an amount of employee/ofice such as: #{employees_per_office}"
  end

end