module Printer

  def self.display(i)
    ["first_name", "last_name", "employee_id", "office"].each do |meta|
      puts "#{meta}: #{i.send(meta)}"
    end
  end

end