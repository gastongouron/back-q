require 'csv'
require_relative 'Interviewee'
require_relative 'Printer'

class Parser

  extend Printer

  def initialize(csv_file)
    file = csv_file
    parse_csv file
  end

  def parse_csv file
    CSV.foreach(file) do |row|
      name, employee_id, office = row.to_s.split(',').map {|m| m.gsub(/[^0-9a-z ]/i, '') }
      i = Interviewee.new(name, employee_id, office)
      Printer.display(i)
    end
  end

end

Parser.new('interview_users.csv')
