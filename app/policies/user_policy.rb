class UserPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def show?
    # is_admin? || is_current_user?
    true
  end

  def index?
    is_admin?
  end

  def update?
    is_admin? || is_current_user?
  end

  def destroy?
    is_admin? || is_current_user?
  end

  private

  def is_current_user?
    @current_user == @user
  end

  def is_admin?
    @current_user.admin?
  end

end




