---
layout: default
title: Get tickets purchased by a user
---

Get the list of tickets purchased by a user. <span class="tag important">Authentication required</span>

## URL

```
GET /users/{id}/tickets
```

**Return** a list of [Ticket](/datatypes#ticket)

## Parameters

* **id** The user id
* **cursor** The cursor to get more results


## Example

{% highlight javascript %}
{
   "data":[
      {
         "id":"Z",
         "performance":{
            "id":"D",
            "dateTimeStr":"2012-10-27T01:00",
            "dateTime":1351292400000,
            "venue":{
               "id":"B",
               "name":"Sala Heineken",
               "address":"Madrid, Spain"
            },
            "show":{
               "id":"C",
               "name":"Testing 1..2...3"
            }
         },
         "numTickets":1,
         "auditoriumName":"Default auditorium",
         "performanceZoneName":"Default Zone",
         "purchaseTimestamp":"2012-06-20T21:22",
         "localizer":"Z-pm",
         "user":{
            "id":"2",
            "name":"Nacho Coloma"
         },
         "state":200,
         "currency":"EUR",
         "total":0
      }
   ],
   "cursor":null
}
{% endhighlight %}
