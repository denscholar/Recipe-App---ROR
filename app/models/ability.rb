class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can :read, :all
    can :add, :all
    can :destroy, Recipe, Inventory, user_id: user.id
  end
end
