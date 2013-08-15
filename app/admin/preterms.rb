ActiveAdmin.register Preterm do
  
   index do                           
    column :gestation   
    column :gender               
    column :steroids       
    column :singleton
    column :sga
    column :nec
    column :survival
    column :IVH12
    column :IVH34
    column :CLD
    column :IMV
    column :homeox
    column :pda
    default_actions                   
  end
end
