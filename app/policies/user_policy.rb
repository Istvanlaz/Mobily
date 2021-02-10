class UserPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def show?
    @current_user.admin? || @current_user == @user
  end

  def index?
    @current_user.admin?
  end

  def update?
    @current_user.admin? || @current_user == @user
  end

end



