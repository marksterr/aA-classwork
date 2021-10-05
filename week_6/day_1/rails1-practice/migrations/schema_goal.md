## `users`
| column name        | data type | details                        |
|:-------------------|:---------:|:-------------------------------|
| `id`               | integer   | not null, primary key          |
| `username`         | string    | not null                       |
| `password`         | string    | not null                       |
| `created_at`       | datetime  | not null                       |
| `updated_at`       | datetime  | not null                       |
 
## `videos` 
| column name        | data type | details                        |
|:-------------------|:---------:|:-------------------------------|
| `id`               | integer   | not null, primary key          |
| `title`            | string    | not null                       |
| `description`      | text      | not null                       |
| `uploader_id`      | integer   | not null, indexed, foreign key |
| `created_at`       | datetime  | not null                       |
| `updated_at`       | datetime  | not null                       |
 
## `comments`

| column name        | data type | details                        |
|:-------------------|:---------:|:-------------------------------|
| `id`               | integer   | not null, primary key          |
| `body`             | string    | not null                       | 
| `video_id`         | integer   | not null, indexed, foreign key | 
| `commenter_id`     | integer   | not null, indexed, foreign key |
| `parent_comment_id`| integer   | indexed, foreign key           |
| `created_at`       | datetime  | not null                       |
| `updated_at`       | datetime  | not null                       |

## `likes`

| column name        | data type | details                        |
|:-------------------|:---------:|:-------------------------------|
| `id`               | integer   | not null, primary key          |
| `liker_id`         | integer   | not null, indexed, foreign key |
| `video_id`         | integer   | not null, indexed, foreign key |
| `created_at`       | datetime  | not null                       |
| `updated_at`       | datetime  | not null                       |