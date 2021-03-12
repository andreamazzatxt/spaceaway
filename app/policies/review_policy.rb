class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def destroy?
    user == record.user
  end

  def show?
    true
  end

  def create?
    record.booking.trip.captain == user || record.booking.user == user
  end
end
