#テーブル設計

##usersテーブル

|email:string,not null,ユニーク規制|
|encrypted_password:string,not null|
|name:string,not null|
|profile;text,not null|
|occupation:text,not null|
|position:text,not null|

##prototypesテーブル

|title:string,not null|
|catch_copy:text,not null|
|concept:text,not null|
|user:references:not null,外部キー|

##commentsテーブル

|content:text,not null|
|prototype:references,not null,外部キー|
|user:references,not null,外部キー|
