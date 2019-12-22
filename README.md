# Kodecta_media_catalog
Project task for Kodecta d.o.o

# Dillinger

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Media Catalog REST API is application for project task for  **Kodecta d.o.o**. 
To install this application you have to install:

  - Python3.8
  - Django==2.2.9
  - Djanog-Rest-Framework 3.10.3
  

# API Walthrouh!

  
To browse through API you must install all needed packages from requirements.txt using command:
 ```sh
$ pip install -r requirements.txt
```

Then you can setup yout database for your environment using:

 ```sh
$ python manage.py createsuperuser
```

After that use:
 ```sh
$ ./manage.py migrate
```

To get your model class ready in database.

Than start server using command:
 ```sh
$ ./manage.py runserver
```
### Browsable API

After starting your local server, open your favorite browser and type:

For production environments...

```sh
http://127.0.0.1:8000/
```



### URLS


```sh
    api/category": "http://127.0.0.1:8000/api/category/",
    "api/creator": "http://127.0.0.1:8000/api/creator/",
    "api/media": "http://127.0.0.1:8000/api/media/",
    "api/media-publish": "http://127.0.0.1:8000/api/media-publish/",
    "api/provider": "http://127.0.0.1:8000/api/provider/",
    "api/searchview": "http://127.0.0.1:8000/api/searchview/",
    "api/user-media-publish": "http://127.0.0.1:8000/api/user-media-publish/"
```

If you get an error like:
`"Authentication credentials were not provided."`

You must get token for your account using curl or http:

First of all you need to register your application with this url:
`"http://localhost:8000/o/applications/register/"`

Get token for your account:
```sh
curl -X POST -d "grant_type=password&username=yourusername&password=yourpassword" -u'yourapplicationtoken:clientid
```
and than authorize account:
```
curl -X GET http://127.0.0.1:8000/api/media/  -H "Authorization: Bearer yourtoken"