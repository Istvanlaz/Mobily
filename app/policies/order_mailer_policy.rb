class OrderMailerPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def received(order)
    true
  end

  def shipped
    true
  end

  # private

  # def is_owner?
  #   user == record.user
  # end
end
