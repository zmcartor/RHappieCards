class Ability

  include CanCan::Ability


  def initialize(user)

    if user.admin?
      can :manage, :all

    else
      can [:read, :update], User, id: user.id
      can :create, User
      cannot :index, User

      can :manage, card: {user_id: user.id}

      can :index, Category
      can :index, Background

      # need ones for Callback resource. nested under Cards

    end


  end

end