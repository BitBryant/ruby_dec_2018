require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1', 'John Doe')
    @project2 = Project.new('Project 2', 'description 2', 'Jim Rohn')
 	  @project1.add_tasks('Put down cards') 
  end
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name")
  end
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1, John Doe")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2, Jim Rohn")
  end
  it 'has a getter and setter for owner attribute' do
  	@project1.owner = 'Tom Jones'# this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  	expect(@project1.owner).to eq('Tom Jones')
  end
  it 'has a method tasks to show the tasks for the project' do
  	expect(@project1.tasks).to eq('Put down cards')
  end
  it 'has a method print_tasks that prints the tasks for the project' do
  	expect(@project1.print_tasks).to eq('Put down cards')
  end
ends