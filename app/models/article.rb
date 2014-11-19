class Article < ActiveRecord::Base
  state_machine initial: :pending do
    #states
    state :pending, value: :pending
    state :published, value: :published

    event :publish do
      transition :pending => :published
    end

    event :unpublished do
      transition :published => :pending
    end
  end
end
