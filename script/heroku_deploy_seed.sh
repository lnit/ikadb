git push heroku master
heroku run rake db:migrate db:seed
heroku restart
