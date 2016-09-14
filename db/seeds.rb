# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
  {
    name:'タケダ',
    email:"june.bure@gmail.com",
    ienow:4,
    image_url:"https://files.slack.com/files-pri/T02EQRUNZ-F2BDVLK4M/____________________________2016-09-14_14.52.16.png"
  },
  {
    name:'クボ',
    email:"j.com",
    ienow:15,
    image_url:"https://files.slack.com/files-pri/T02EQRUNZ-F2BDVLK4M/____________________________2016-09-14_14.52.16.png"
  },
  {
    name:'ハラダ',
    email:"fj.com",
    ienow:3,
    image_url:"https://files.slack.com/files-pri/T02EQRUNZ-F2BDVLK4M/____________________________2016-09-14_14.52.16.png"
  },
  {
    name:'コモリ',
    email:"fj.com",
    ienow:0,
    image_url:"https://files.slack.com/files-pri/T02EQRUNZ-F2BDVLK4M/____________________________2016-09-14_14.52.16.png"
  }
])

