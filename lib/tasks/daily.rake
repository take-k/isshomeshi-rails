namespace :daily do
  desc 'reset ienow count'
  task reset_ienow: :environment do
    User.all.update_all ienow:0
  end
  task reset_cook_good: :environment do
    Cook.all.update_all good:0
  end
end
