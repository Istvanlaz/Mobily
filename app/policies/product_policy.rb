class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def deal_show?
    true
  end

  def product_deal?
    true
  end

  def newest_show?
    true
  end

  def product_show?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    is_owner?
  end

  def destroy?
    is_owner?
  end

  private

  def is_owner?
    user == record.user
  end
end
