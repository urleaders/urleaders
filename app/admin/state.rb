ActiveAdmin.register State do

  permit_params :name, :Geometry_id, :StateType_id, :Candidate_id, :Party_id, :capital, :formation_date, :formation_text, :count_pc, :count_ac, :deleted
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
