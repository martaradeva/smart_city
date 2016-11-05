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

***

API Docs:

Sensor readings will be updated via a single query:

`[POST] <app-url>/readings`

````
HEADERS

Content-Type : application/json

Body: {
    "device_id" : "123",
    "lat" : "42.6599371",
    "long" : "23.3165944",
    "sensor_01" : "",
    "sensor_02" : ""
  }

More sensors will be added later.