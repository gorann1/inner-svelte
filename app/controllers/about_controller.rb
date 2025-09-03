class AboutController < ApplicationController
  def index
    render inertia: "AboutPage", props: {
      name: params.fetch(:name, "About Stranica")
    }
  end
end
