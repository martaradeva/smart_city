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

REQUEST
`[POST] https://smart-city-space.herokuapp.com/readings`

````
HEADERS

Content-Type : application/json

Body: {
    reading : {
      "device_id" : "123",
      "lat" : "42.6599371",
      "long" : "23.3165944",
      "temp" : "23.456",
      "hum" : "23.456",
      "pres" : "23.456"
    }
  }

````
Still have not added the voltage sensor, but will do soon. 

RESPONSE - SUCCESS
````
HEADERS

Content-Type : application/json
Status : 200

Body: {
    "success" : "true",
    "message" : "Reading successfully saved!"
  }
````

RESPONSE - ERROR
````
HEADERS

Content-Type : application/json
Status : 400

Body: {
    "success" : "false",
    "message" : "Reading not saved. There were errors. [error info]"
  }
````
