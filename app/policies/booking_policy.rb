class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.mission.volunteers_count >= record.mission.bookings.count
  end

  def destroy?
    record.user == user
  end
end
