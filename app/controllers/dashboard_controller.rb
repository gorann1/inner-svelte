class DashboardController < ApplicationController
  def index
    render inertia: "AdminPage"
  end
end
