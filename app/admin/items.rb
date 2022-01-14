ActiveAdmin.register Item do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :body,:avatar

  index do
    column :title
    column :body
    column "avatar" do |f|
      image_tag(f.avatar_url, height:"50", width: "50") rescue nil

    end
    actions
  end

  show title: :title do
    attributes_table do
      row :title
      row :body
      row "avatar" do |f|
      image_tag(f.avatar_url, height:"50", width: "50") rescue nil

    end
  end
end

  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
