# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Winery.destroy_all
Review.destroy_all

users = User.create!([
  {name: 'Diana', email: 'dmjurg@gmail.com', location: 'Washington, DC', image: 'https://cdn-img-0.wanelo.com/p/060/b9a/379/11fdf56feb41513b1e57db0/x354-q80.jpg', password: 'diana', admin: true},
  {name: 'Kristin', email: 'kristin@kristin.com', location: 'Charlotte, NC', image: 'http://www.jamesandeverett.com/whatscooking/wp-content/uploads/2012/12/champgn.toast_GP0472-834x1024.jpg', password: 'kristin'},
  {name: 'Alison', email: 'alison@alison.com', location: 'Charlottesville, VA', image: 'http://atodmagazine.com/wp-content/uploads/2014/03/wine-stoppers-pc-and-mac-1073571.jpg', password: 'alison'},
  {name: 'Cat', email: 'cat@cat.com', location: 'Washington, DC', image: 'http://chimpingz.com/wp-content/uploads/2010/05/Jasper.jpg', password: 'cat'},
  {name: 'Sara', email: 'sara@sara.com', location: 'Norfolk, VA', image: 'http://bentonfinewine.com/home/wp-content/uploads/2013/01/wine_glassbottle_illustration.png', password: 'sara'},
  {name: 'SK', email: 'sk@sk.com', location: 'Lynchburg, VA', image: 'http://previews.123rf.com/images/damedeeso/damedeeso1209/damedeeso120900005/15179290-french-dog-wine-baguette-beret-Stock-Photo-france.jpg', password: 'sk'}
  ])

wineries = Winery.create([
  {name: 'Breaux Vineyards', location: 'Purcellville, VA', website: 'www.breauxvineyards.com', phone_number: '540-668-6299', visitors: true, tours: true, pets: true},
  {name: 'Williamsburg Winery', location: 'Williamsburg, VA', website: 'www.williamsburgwinery.com', phone_number: '757-229-0999', visitors: true, tours: true, pets: false},
  {name: 'Barboursville Vineyards', location: 'Barboursville, VA', website: 'www.barboursvillewine.com', phone_number: '540-832-3824', visitors: true, pets: false},
  {name: 'Barrel Oak Winery', location: 'Delaplane, VA', website: 'www.barreloak.com', phone_number: '540-364-6402', visitors: true, pets: true},
  {name: 'King Family Vineyards', location: 'Crozet, VA', website: 'www.kingfamilyvineyards.com', phone_number: '434-823-7800', visitors: true, tours: true},
  {name: 'Willowcroft Farm Vineyards', location: 'Leesburg, VA', website: 'www.willowcroftwine.com', phone_number: '703-777-8161', visitors: true, pets: true},
  {name: 'Chateau Morrisette', location: 'Floyd, VA', website: 'www.thedogs.com', phone_number: '540-593-2865', visitors: true, pets: true},
  {name: 'Blenheim Vineyards', location: 'Charlottesville, VA', website: 'www.blenheimvineyards.com', phone_number: '434-293-5366', visitors: true, pets: true}
  ])
