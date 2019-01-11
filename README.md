# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## albumテーブル
|column|type|option|
|------|----|------|
|name|string|null:false|
|image|text|           |
|text|text|
|artist_id|references|foreign_key:true|

###asociation
has_many comments
belongs_to user



## artistテーブル
|colmun|type|option|
|------|----|------|
|name|string|null:false|

###asociation
has_many users through user_artists
has_many alubms

## songs テーブル
|colmun|type|option|
|------|----|------|
|name|string|null:false|
|artist_id|references|foreign_key|
|album_id|references|foreign_key|


## usersテーブル
|column|type|option|
|------|----|------|
|name|string|null:false|

###asociation
has_many artists through user_artists
has_many comments

## user_artistsテーブル
|column|type|option|
|------|----|------|
|user_id|references|foreign_key|
|artist_id|references|foreign_key|

###asociation
belongs_to user
belongs_to  artist


## commentsテーブル
|column|type|option|
|------|----|------|
|text|text|null:false|
|user_id|references|foreig_key:true|
|album_id|references|foreign_key:true|

###asociation
belongs_to user
belongs_to album
