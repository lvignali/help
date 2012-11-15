---
layout: default_en
title: Data types
categories: [en, api]
---

All the data types used in Koliseo are described here. Depending on the context some of the attributes described here may be missing.

## Primitive types

These are the primitive types used through the website.

<table>
	<thead>
		<tr><th>Name</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>Number</td><td>A floating point or integer number.</td></tr>
		<tr><td>boolean</td><td>A value that may be true or false.</td></tr>
		<tr><td>String</td><td>A text value</td></tr>
		<tr><td>Key</td><td>A String value used as primary key.</td></tr>
		<tr><td>Array</td><td>An array of values.</td></tr>
		<tr><td>Date</td><td>A date with optional timestamp information. Dates are serialized as two fields:
			<ul>
				<li>Number of milliseconds since 1970</li>
				<li>String with the ISO8601 representation of this date</li>
			</ul></td></tr>
	</tbody>
</table>

## Enumerations

String fields with restricted values.

<table>
	<thead>
		<tr><th>Name</th><th>Values</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>ShowType</td><td> TRAINING, CONFERENCE, ENTERPRISE, CIRCUS, THEATER, MOVIE, SPORTS, DANCE, MUSIC, PARTY, EXHIBITION, TOURISM, OTHER </td><td class="nowrap">The Show type.</td></tr>
		<tr><td>VenueType</td><td>CINEMA, THEATER, CONCERT_HALL, CLUB, STADIUM, MUSEUM, OTHER</td><td class="nowrap">The Venue type.</td></tr>
		<tr><td>Currency</td><td>EUR, USD, GBP</td><td class="nowrap">The list of supported currencies.</td></tr>
	</tbody> 
</table>

## Cursors

All queries that return a list of results will include a `cursor` attribute in the response object. This cursor is a String that can be provided to get the next page of results in a subsequent request.

Example: 

```
GET /users/ABCD/shows?cursor=abc45ojk
```

## FlickrImage

A photo linked from Flickr.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>url </td><td>String</td><td>The Flickr URL for this photo</td></tr>
		<tr><td>title </td><td>String</td><td>The photo title</td></tr>
	</tbody>
</table>

## YoutubeVideo

A video linked from Youtube.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>id </td><td>String</td><td>The video ID at Youtube</td></tr>
		<tr><td>author </td><td>String</td><td>The author of this video</td></tr>
		<tr><td>title </td><td>String</td><td>The title of this video</td></tr>
		<tr><td>duration </td><td>Number</td><td>The duration of this video, in minutes</td></tr>
	</tbody>
</table>

## GeoPt

A geographical location in a format that can be passed directly to Google Maps.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>lat </td><td>Number</td><td>The latitude</td></tr>
		<tr><td>lng </td><td>Number</td><td>The longitude</td></tr>
	</tbody>
</table>

## Votes

The current vote results for a Show.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>up </td><td>Number</td><td>The number of "up" votes</td></tr>
		<tr><td>down </td><td>Number</td><td>The number of "down" votes</td></tr>
	</tbody>
</table>

## Show

Event attributes that are considered reusable between Performances.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>id</td><td>Key</td><td>The primary key</td></tr>
		<tr><td>name </td><td>String</td><td>The show name</td></tr>
		<tr><td>type </td><td><a href="#enumerations">ShowType</a></td><td>The show type</td></tr>
		<tr><td>description</td><td>String</td><td>The description of this show using Markdown format</td></tr>
		<tr><td>creator </td><td><a href="#user">User</a></td><td>The user that created this show</td></tr>
		<tr><td>photos</td><td>Array of <a href="#flickrimage">FlickrImage</a></td><td>The list of selected photos</td></tr>
		<tr><td>videos</td><td class="nowrap">Array of <a href="#youtubevideo">YoutubeVideo</a></td><td>The list of selected videos</td></tr>
		<tr><td>votes</td><td><a href="#votes">Votes</a></td><td>The current vote results for this show</td></tr>
		<tr><td>unlisted</td><td>boolean</td><td>True if the Show is marked as unlisted</td></tr>
		<tr><td>creationDate </td><td>Number</td><td>The creation timestamp of this show, as milliseconds since 1970.</td></tr>
	</tbody>
</table>

## User

Attributes used to identify a User.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>id</td><td>Key</td><td>The primary key</td></tr>
		<tr><td>name </td><td>String</td><td>The user name</td></tr>
		<tr><td>description</td><td>String</td><td>The user description using Markdown format</td></tr>
	</tbody>
</table>

## Venue

Defines a location for a Performance. Venues can be reused by multiple Performances.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>id</td><td>Key</td><td>The primary key</td></tr>
		<tr><td>name </td><td>String</td><td>The venue name</td></tr>
		<tr><td>type </td><td><a href="#enumerations">VenueType</a></td><td>The venue type</td></tr>
		<tr><td>address </td><td>String</td><td>The address of this venue, as free text.</td></tr>
		<tr><td>description</td><td>String</td><td>The description of this venue using Markdown format</td></tr>
		<tr><td>geo </td><td><a href="#geopt">GeoPt</a></td><td>The geolocation of this venue</td></tr>
		<tr><td>creator </td><td><a href="#user">User</a></td><td>The user that created this venue</td></tr>
		<tr><td>currency </td><td><a href="#enumerations">Currency</a></td><td>The currency used by this venue.</td></tr>
		<tr><td>auditoriums </td><td class="nowrap">Array of <a href="#auditorium">Auditorium</a></td><td>List of auditoriums in this venue</td></tr>
		<tr><td>country </td><td>String</td><td>The two-letter ISO code of the country where this venue is located.</td></tr>
		<tr><td>creationDate / creationDateStr </td><td>Date</td><td>The creation timestamp of this venue.</td></tr>
	</tbody>
</table>

## Auditorium

A room configuration inside a Venue. This is like a template that will be used to assign default values to new Performances created at this Venue.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>name </td><td>String</td><td>The auditorium name</td></tr>
		<tr><td>totalTickets </td><td>Number</td><td>The number of tickets in this Auditorium. This is the sum of all the configured Zones</td></tr>
		<tr><td>zones </td><td class="nowrap">Array of <a href="#zones">Zone</a></td><td>The different ticket prices configured for this Auditorium.</td></tr>
	</tbody>
</table>

## Zone

A ticket type, like "VIP" or "standard ticket".

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>name </td><td>String</td><td>The zone name</td></tr>
		<tr><td>totalTickets </td><td>Number</td><td>The number of available tickets in this Zone.</td></tr>
		<tr><td>soldTickets </td><td>Number</td><td>The number of sold tickets for this Zone.</td></tr>
		<tr><td>price </td><td>Number</td><td>The price to apply, not including the Koliseo fee.</td></tr>
		<tr><td>fee </td><td>Number</td><td>The Koliseo fee to apply.</td></tr>
	</tbody>
</table>

## Performance

Performances are where the action takes place. It is the result of combining a Show, a Venue and a timestamp.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>id </td><td>String</td><td>The primary key</td></tr>
		<tr><td>dateTime / dateTimeStr </td><td>Date</td><td>The timestamp of this performance.</td></tr>
		<tr><td>venue </td><td><a href="#venue">Venue</a></td><td>The location where this performance takes place.</td></tr>
		<tr><td>show </td><td><a href="#show">Show</a></td><td>The show data of this performance.</td></tr>
		<tr><td>auditorium </td><td>String</td><td>Auditorium name.</td></tr>
		<tr><td>zones </td><td class="nowrap">Array of <a href="#zones">Zone</a></td><td>The different ticket prices for this Performance.</td></tr>
		<tr><td>soldTickets </td><td>Number</td><td>The number of sold tickets for this Performance.</td></tr>
		<tr><td>checkedinTickets </td><td>Number</td><td>The number of validated tickets for this Performance.</td></tr>
		<tr><td>totalTickets </td><td>Number</td><td>The number of tickets (sold + available) for this performance.</td></tr>
		<tr><td>currency </td><td><a href="#enumerations">Currency</a></td><td>The currency used for this performance.</td></tr>
		<tr><td>minPrice </td><td>Number</td><td>The minimum price in this Performance.</td></tr>
	</tbody>
</table>

## Ticket

A Ticket purchased by a User.

<table>
	<thead>
		<tr><th>Name</th><th>Type</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>id </td><td>String</td><td>The primary key</td></tr>
		<tr><td>performance </td><td><a href="#performance">Performance</a></td><td>The performance associated to this ticket.</td></tr>
		<tr><td>numTickets </td><td>Number</td><td>The number of tickets purchased.</td></tr>
		<tr><td>purchaseTimestamp </td><td>String</td><td>The name of the auditorium .</td></tr>
		<tr><td>performanceZoneName </td><td>String</td><td>The number of tickets purchased.</td></tr>
		<tr><td>currency </td><td><a href="#enumerations">Currency</a></td><td>The currency used for this performance.</td></tr>
		<tr><td>total </td><td>Number</td><td>The total price paid for this ticket.</td></tr>
		<tr><td>user </td><td><a href="#user">User</a></td><td>The user that purchased this ticket</td></tr>
	</tbody>
</table>
