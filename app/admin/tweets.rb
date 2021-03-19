ActiveAdmin.register Tweet do


  permit_params :content, :img, :user_id, :retweet_id, :id

  
end
