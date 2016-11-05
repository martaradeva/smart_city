Pull repo. 

in project directory in console -> 

`bundle install`

Save `config/database.yml.example` as `config/database.yml` and add your postgress users and passwords.

In psql, make users and passwords. You may use this tutorial. 
https://rgstudygroups.hackpad.com/Installing-Postgre-on-Ubuntu-RQ6TIAunywO

In project folder in console

`rake db:migrate`

`rails s`

If all is well, should be rolling by now.
