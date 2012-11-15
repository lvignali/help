---
layout: default_es
title: Get performances
---

Get the list of performances for a show.

## URL

```
GET /shows/{id}/performances
```

**Return** a list of [Performance](/datatypes#performance)

## Parameters

* **id** The show id
* **cursor** The cursor to get more results


## Example

{% highlight javascript %}
[
   {
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
      },
      "auditorium":"Default auditorium",
      "zones":[
         {
            "name":"Default Zone",
            "totalTickets":100,
            "price":0,
            "fee":0,
            "soldTickets":6
         }
      ],
      "soldTickets":6,
      "checkedinTickets":0,
      "totalTickets":100,
      "currency":"EUR",
      "minPrice":0
   }
]
{% endhighlight %}
