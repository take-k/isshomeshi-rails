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
    image_url:"https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-1/p160x160/13901410_768682063271850_6644402495274992449_n.jpg?oh=5c0c676a9be65c98cdf04d4fd87dd3b3&oe=5885E47D"
  },
  {
    name:'クボ',
    email:"j.com",
    ienow:15,
    image_url:"https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/13895067_950727951739245_251853489480718374_n.jpg?oh=79ab924563a682df3492c7d116bf8138&oe=5838D28A"
  },
  {
    name:'コムロ',
    email:"fj.com",
    ienow:3,
    image_url:"https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/11048609_775499519194895_4996134180698860846_n.jpg?oh=136337d8787db05d3c80fb827a908609&oe=583AA417"
  },
  {
    name:'トミナガ',
    email:"fj.com",
    ienow:0,
    image_url:"https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/11692656_574263552715070_6110763692688466067_n.jpg?oh=f196fcb8c50c8fed8cff0e806bf4d0d1&oe=583D7871"
  },
{
    name:'ハルタ',
    email:"fdsfds",
    ienow:2,
    image_url:"https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-9/13466145_1743950642553670_6906358216286959188_n.jpg?oh=b01e1481b4a7c66040cb091fe8a69609&oe=583E2313"
}])