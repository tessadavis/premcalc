class Preterm < ActiveRecord::Base
  attr_accessible :CLD, :IMV, :IVH12, :IVH34, :gender, :gestation, :homeox, :nec, :sga, :singleton, :steroids, :survival, :pda
end
