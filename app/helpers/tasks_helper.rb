module TasksHelper
  def status_converter(int)
    int.to_s
    case int
      when "1"
        "Active"
      when "2"
        "In progress"
      when "3"
        "Completed"
    end
  end
end
