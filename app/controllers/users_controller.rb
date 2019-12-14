class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Vadim',
      username: 'voody77',
      avatar_url: 'https://www.gravatar.com/avatar/5f16d3f6fbbfe055fc34814ef7e88198'
    )
  end
end
