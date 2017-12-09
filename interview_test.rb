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
    interviewees = []
    CSV.foreach(file) do |row|
      name, employee_id, office = row.to_s.split(',').map {|m| m.gsub(/[^0-9a-z ]/i, '') }
      i = Interviewee.new(name, employee_id, office)
      interviewees.push(i)
      print_interviewee_identity(i)
    end
    print_interviewees_offices(interviewees)
  end

  # part 1
  def print_interviewee_identity(interviewee)
    Printer.display_identity(interviewee)
  end

  # part 2
  def print_interviewees_offices(interviewees)
    Printer.display_offices_informations(interviewees)
  end

end

# initialize with
Parser.new('interview_users.csv')
