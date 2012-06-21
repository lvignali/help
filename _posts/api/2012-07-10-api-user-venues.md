---
layout: default
title: Get venues
---

Get the list of venues created by a user.

## URL

```
GET /users/{id}/venues
```

**Return** a list of [Venue](/datatypes#venue)

## Parameters

* **id** The user id
* **cursor** The cursor to get more results


## Example

{% highlight javascript %}
{
   "data":[
      {
         "id":"B",
         "name":"Sala Heineken",
         "address":"Madrid, Spain",
         "geo":{
            "lat":40.41669,
            "lng":-3.7003455
         },
         "timezone":"Europe/Madrid (GMT+1)",
         "currency":"EUR",
         "auditoriums":[
            {
               "name":"Default auditorium",
               "totalTickets":100,
               "zones":[
                  {
                     "name":"Default Zone",
                     "totalTickets":100,
                     "price":10,
                     "fee":1
                  }
               ]
            }
         ],
         "locality":"Madrid",
         "country":"Spain",
         "type":"CLUB",
         "creator":{
            "id":"2",
            "name":"Nacho Coloma"
         },
         "creationDate":1339580058394,
         "creationDateStr":"2012-06-13T11:34"
      }
   ],
   "cursor":null
}
{% endhighlight %}
