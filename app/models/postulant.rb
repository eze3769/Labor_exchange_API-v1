class Postulant < ApplicationRecord
  include AASM

  aasm do
    state :pending, initial: true
    state :interest, :rejected, :hired

    event :highlight do
      transitions from: :pending, to: :interest
    end
    event :hire do
      transitions from: :interest, to: :hired
    end
    event :reject do
      transitions from: [:interest,:pending], to: :rejected
    end
    
    def pending
      puts "You need to check it out!"
    end
    def interest
      # use mailer to notify users who has this state!
    end
    def rejected
      # do nothing or notify 
    end
    def hired
      #use mailer to congrat the hired one!
    end

  end
  belongs_to :user
  belongs_to :offer
end
