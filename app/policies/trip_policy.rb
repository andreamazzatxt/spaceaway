class TripPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def show?
    true
  end

  def destroy?
    record.bookings.count.positive? ? false : true
  end

  def create?
    user.is_captain?
  end
end
