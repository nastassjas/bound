class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    record.charity.users.include?(user)
  end

  def new?
    create?
  end

  def show?
    true
  end
end
