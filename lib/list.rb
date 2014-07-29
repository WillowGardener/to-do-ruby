
class List
  def initialize(listname)
    @tasklist = []
    @listname = listname
  end

  def tasklist
    @tasklist
  end

  def list_describe
    @listname
  end

  def add_task(task)
    @tasklist << task
  end
end
