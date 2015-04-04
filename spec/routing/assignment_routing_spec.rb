require "rails_helper"

RSpec.describe AssignmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/assignments").to route_to("assignments#index")
    end

    it "routes to #show" do
      expect(:get => "/assignments/1").to route_to("assignments#show", :id => "1")
    end

    it "routes to #assignment_list" do
      expect(:get => "/assignment_list/1").to route_to("assignments#course_assignment", :course => "1")
    end

  end
end
