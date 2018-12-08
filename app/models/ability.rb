class Ability
<<<<<<< HEAD
  include CanCan::Ability

  def initialize(user)
    user || = User.new # guest user (not logged in)
=======
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
>>>>>>> master
    can :manage, User, id: user.id
  end
end
