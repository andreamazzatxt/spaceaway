class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    @user = @record.user
  end

  def approve?
    @user == @record.trip.captain
  end
end
