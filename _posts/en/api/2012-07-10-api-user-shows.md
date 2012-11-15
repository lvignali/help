---
layout: default_en
title: Get shows
---

Get the list of shows created by a user.

## URL

```
GET /users/{id}/shows
```

**Return** a list of [Show](/datatypes#show)

## Parameters

* **id** The user id
* **cursor** The cursor to get more results


## Example

{% highlight javascript %}
{
   "data":[
      {
         "id":"C",
         "name":"Testing 1..2...3",
         "creator":{
            "id":"2",
            "name":"Nacho Coloma"
         },
         "description":"Fork me? Fork you!",
         "type":"CONFERENCE",
         "creationDate":"2012-06-13T09:36",
         "photos":[
            {
               "url":"http://farm4.static.flickr.com/3301/3327028413_160a114892.jpg",
               "title":"Testing 1 2 3 016"
            }
         ],
         "videos":[
            {
               "author":"tomska",
               "id":"O5fzmmrk6kk",
               "title":"Final Banned University of Lincoln Advert",
               "duration":29
            }
         ],
         "votes":{
            "up":1,
            "down":0
         },
         "unlisted":false
      }
   ],
   "cursor":null
}
{% endhighlight %}
