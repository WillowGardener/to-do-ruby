require 'rspec'
require 'task'
require 'list'

describe Task do
  it "is initialized with a description" do
    test_task = Task.new("organize your collection of creepy stuffed animals")
    expect(test_task).to be_an_instance_of Task
  end

  it "Let's you read the description" do
    test_task = Task.new("organize your collection of creepy stuffed animals")
    expect(test_task.description).to eq "organize your collection of creepy stuffed animals"
   end
end

describe List do
  it "starts out with an empty lists of tasks" do
    test_list = List.new("Grocery Items")
    expect(test_list.tasklist).to eq []
  end
  it "can add tasks to the list" do
    test_list = List.new("Human Flight")
    test_task = Task.new("design large wings")
    test_list.add_task(test_task)
    expect(test_list.tasklist).to eq [test_task]
  end
end

