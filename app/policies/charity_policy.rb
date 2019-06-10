class CharityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def roulette?
    true
  end

  def index?
    true
  end

  def create?
    true
  end

end
