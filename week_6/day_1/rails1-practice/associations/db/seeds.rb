# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def rand_id
  rand(1..100_000)
end

ActiveRecord::Base.transaction do
  User.delete_all
  Video.delete_all
  Comment.delete_all
  Like.delete_all

  gerald = User.create(
    id: rand_id,
    username: "cousin_gerald",
    password: "hesadoctor"
  )

  gillian = User.create(
    id: rand_id,
    username: "gillian",
    password: "ballberie"
  )

  tame_impala = Video.create(
    id: rand_id,
    title: "The Less I Know the Better",
    description: "Music by Australian band Tame Impala",
    uploader_id: gerald.id
  )

  pizzaball = Video.create(
    id: rand_id,
    title: "Ball of Pizza",
    description: "Eric brings pizza to the dojo",
    uploader_id: gillian.id
  )

  comment = Comment.create(
    id: rand_id,
    video_id: tame_impala.id,
    commenter_id: gillian.id,
    body: "first"
  )

  child_comment = Comment.create(
    id: rand_id,
    video_id: tame_impala.id,
    commenter_id: gerald.id,
    parent_comment_id: comment.id,
    body: "second"
  )

  like1 = Like.create(id: rand_id, liker_id: gillian.id, video_id: tame_impala.id)
  like2 = Like.create(id: rand_id, liker_id: gerald.id, video_id: pizzaball.id)
  
end