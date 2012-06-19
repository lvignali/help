---
layout: default
title: Data types
categories: api
---

All the data types used in Koliseo are described here. Depending on the context where they are used some of the attributes described here may be missing.

## Primitive types

These are the primitive types used through the website.

<table>
	<thead>
		<tr><th>Name</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>number</td><td>A floating point or integer number.</td></tr>
		<tr><td>boolean</td><td>A value that may be true or false. If ommitted, it should be interpreted as false.</td></tr>
		<tr><td>String</td><td>A text value</td></tr>
		<tr><td>Key</td><td>A String value used to identify an object inside Koliseo.</td></tr>
		<tr><td>Array</td><td>An array of values.</td></tr>
		<tr><td>Date</td><td>A date with optional timestamp information. Date fields are serialized as two fields, one Number with milliseconds since 1970 and the other one as the ISO8601 representations, relative to the Venue timezone, if any.</td></tr>
	</tbody>
</table>

## Enumerations

These are String fields that have restricted values.

<table>
	<thead>
		<tr><th>Name</th><th>Values</th><th>Description</th></tr>
	</thead>
	<tbody>
		<tr><td>ShowType</td><td> TRAINING, CONFERENCE, ENTERPRISE, CIRCUS, THEATER, MOVIE, SPORTS, DANCE, MUSIC, PARTY, EXHIBITION, TOURISM, OTHER </td><td class="nowrap">The Show type.</td></tr>
		<tr><td>VenueType</td><td>CINEMA, THEATER, CONCERT_HALL, CLUB, STADIUM, MUSEUM, OTHER</td><td class="nowrap">The Venue type.</td></tr>
		<tr><td>Currency</td><td>EUR, USD, GBP</td><td>The currencies supported by Koliseo.</td></tr>
	</tbody>
</table>

## FlickrImage

A photo selected from Flickr.

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

A video selected from Youtube.

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

## Votes

The vote results for a Show.

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

A Show is composed of event data that are considered reusable between locations.

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
		<tr><td>votes</td><td><a href="#votes">Votes</a></td><td>The current vote values for this show</td></tr>
		<tr><td>unlisted</td><td>boolean</td><td>True if the Show is marked as unlisted</td></tr>
		<tr><td>creationDate </td><td>Number</td><td>The creation timestamp of this show, as milliseconds since 1970.</td></tr>
	</tbody>
</table>

## User

User data

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

Data that defines a location for a Performance. Venues can be reused by multiple Performances.

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
		<tr><td>creator </td><td><a href="#user">User</a></td><td>The user that created this venue</td></tr>
		<tr><td>currency </td><td><a href="#enumerations">Currency</a></td><td>The currency used by this venue.</td></tr>
		<tr><td>auditoriums </td><td class="nowrap">Array of <a href="#auditorium">Auditorium</a></td><td>List of auditoriums in this venue</td></tr>
		<tr><td>country </td><td>String</td><td>The two-letter ISO code of the country where this venue is located.</td></tr>
		<tr><td>creationDate / creationDateStr </td><td>Date</td><td>The creation timestamp of this venue.</td></tr>
	</tbody>
</table>

## Auditorium

A room configuration inside a Venue. This is like a Performance templates that will be used to create Performances each time that a Show is pinned down to a Venue.

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
		<tr><td>price </td><td>Number</td><td>The price to apply.</td></tr>
		<tr><td>fee </td><td>Number</td><td>The Koliseo fee to apply.</td></tr>
	</tbody>
</table>

## Performance

Performances are where the action takes place. It is the result of combining a Show with a Venue (which provides location) and a timestamp. When creating, a Performancecopies the selected Auditorium structure into its own.

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
		<tr><td>totalTickets </td><td>Number</td><td>The number of tickets for sale for this performance.</td></tr>
		<tr><td>currency </td><td><a href="#enumerations">Currency</a></td><td>The currency used for this performance.</td></tr>
		<tr><td>minPrice </td><td>Number</td><td>The minimum price available in this Performance.</td></tr>
	</tbody>
</table>

