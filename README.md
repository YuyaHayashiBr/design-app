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

## Database design

### "users" table
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| email                 | string     | null: false, unique: true      |
| encrypted_password    | string     | null: false                    |
| nickname              | string     | null: false                    |

#### Association
- has_many :notes

### "notes" table
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| brewery               | string     |                                |
| beer_style            | string     |                                |
| srm                   | integer    |                                |
| ibu                   | integer    |                                |
| abv                   | integer    |                                |
| looks_clear_id        | integer    |                                |
| looks_color_id        | integer    |                                |
| looks_foam_id         | integer    |                                |
| aroma_malt_id         | integer    |                                |
| aroma_hop_id          | integer    |                                |
| aroma_ester_id        | integer    |                                |
| aroma_fruit_id        | integer    |                                |
| aroma_other_id        | integer    |                                |
| flavor_body_id        | integer    |                                |
| flavor_carbonation_id | integer    |                                |
| flavor_malt_id        | integer    |                                |
| flavor_hop_id         | integer    |                                |
| flavor_other_id       | integer    |                                |
| memo                  | text       |                                |
| user                  | references | null: false, foreign_key: true |

#### Association
- belongs_to :user