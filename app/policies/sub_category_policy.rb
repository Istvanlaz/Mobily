class SubCategoryPolicy < ApplicationPolicy
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

  def newest_sub_category?
    true
  end

  def newest_sub_category_show?
    true
  end

  def deal_sub_category?
    true
  end

  def deal_sub_category_show?
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

  # private

  # def is_owner?
  #   user == record.user
  # end
end
