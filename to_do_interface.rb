require './lib/task.rb'
require './lib/list.rb'

@currentlist = []
@all_lists = []

def menu
  loop do
    puts "Press 'n' to add a new list"
    puts "Press 'a' to add task or 'l' to list all of your tasks in the current list."
    puts "Press 'll' to list all your lists... in a list"
    puts "Press 'x' to exit."
    choice = gets.chomp
    if choice == "n"
      add_newlist
    elsif choice == "ll"
      view_lists
      puts "which list would you like to interact with?"
      listchoice = gets.chomp
      @all_lists.each do |i|
        if listchoice == i.list_describe
          puts i.list_describe
          @currentlist = i
        # else
        #   puts "try again--not a valid list name"
       end
      end
    elsif choice == "a"
      add_task
    elsif choice == "l"
      list_tasks
    elsif choice == "x"
      puts "Bye!!"
      exit
    else
      puts "This is not a valid entry"
    end
  end
end

 def add_newlist
  puts "Enter name of new list"
  listname = gets.chomp
  new_list = List.new(listname)
  @all_lists << new_list
  @currentlist = new_list
  puts "New List has been added.\n\n"
 end

 def view_lists
    puts "Here are all your list categories:"
    @all_lists.each do |list|
      puts list.list_describe
    end
  end

 def add_task
  puts "Enter a description of a new task"
  description = gets.chomp
  new_task = Task.new(description)
  @currentlist << new_task
  puts "Task added.\n\n"
 end

 def list_tasks
  puts "Here is your task list:"
  @currentlist.each do |task|
    puts task.description
  end
end

 menu
