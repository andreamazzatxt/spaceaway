class TripPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def show?
    true

  def destroy?
    record.pirats.positive? ? false : true
  end

  def create?
    user.is_captain?

  end
end
