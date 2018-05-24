class BookingPolicy < ApplicationPolicy

  def create?
    return true
  end

  def show?
    return true
  end

  def edit?
    record.owner == user
  end

  def update?
    record.owner == user
    # - record: the place passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.owner == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
