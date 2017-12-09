class Interviewee

  attr_reader :last_name, :first_name, :employee_id, :office

  def initialize(name, employee_id, office)
    @last_name, @first_name = name.split
    @employee_id            = employee_id.strip
    @office                 = office.strip
  end

end