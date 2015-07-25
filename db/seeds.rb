# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
{email:"admin@admin.com", password:"testtest", password_confirmation:"testtest", admin: true},
])

countries= Country.create([
{name: "Bangladesh", description:"In risk of major floods", continent:"Asia", image:"http://www.wateraid.org/~/media/Images/Global/Feature-or-static-carousel-1212x500-else-992x450/BG24_0612.jpg?h=500&la=en&w=1212"},
{name: "Nepal", description:"Just had a major earthquake", continent:"Asia", image:"http://www.matobo.co.uk/wp-content/uploads/2014/09/Nepal-2.jpg"},
{name: "Ghana", description:"Problems with environmental exploitation", continent:"Africa", image:"http://www.un.org/africarenewal/sites/www.un.org.africarenewal/files/ghana2.jpg"},
{name: "Ecuador", description:"Issues with overexploitation of food sources", continent:"South-America", image:"http://www.augustana.edu/Images/international/Ecuador/travelEcuador7.jpg"}
])

projects= Project.create([
{name:"Women's Health Project", description:"Women in rural Bangladesh are in need of health care.", image:"http://muslimvoices.org/wp-content/uploads/2010/09/bang.jpg", total_needed: 30000, country_id: 1},
{name:"Bangladesh flood relief", description: "Flooding is a problem in the delta. Help mitigate this!", image: "http://coolgeography.co.uk/A-level/AQA/Year%2012/Rivers_Floods/Flooding/Bangladesh/bangladesh_floods_3column00_nospace_landscape.jpg", total_needed: 25000, country_id: 1},
{name:"Organic Farm", description: "Suport an organic rice farm!", image: "http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2011/9/9/1315564902458/Bangladesh-007.jpg", total_needed: 5000, country_id: 1},

{name:"Kathmandu Earthquake Relief", description:"A major earthquake recently hit Nepal. Kathmandu needs supplies.", image:"https://timedotcom.files.wordpress.com/2015/04/nepal_earthquake_adam_ferguson_2015_02217.jpg?quality=65&strip=color&w=838", total_needed: 700000, country_id: 2},
{name:"Books for Rural Schools", description: "Kids can't afford books in rural areas. Help them get textbooks.", image: "http://www.roomtoread.org/view.image?Id=3435", total_needed: 500000, country_id: 2},
{name:"Restore a monastery", description: "Mustang's monasteries need to be repaired. Help out!", image: "http://media.sacbee.com/static/weblogs/photos/images/2012/may12/weidman_mustang_sm/weidman_mustang_05.jpg", total_needed: 100000, country_id: 2},

{name:"Build school in Ghana", description:"Build a school for primary school kids to learn reading and math!", image:"https://camfed.org/media/assets/c8/96dfebfe28152df721a4c3405f0d8f563f7504.jpg", total_needed: 100000, country_id: 3},
{name:"Support legislation for rainforest animals", description: "Many species in Ghana are endangered or threatened.", image: "http://www.rainforest-alliance.org/sites/default/files/styles/multimedia_kids_slideshow/public/multimedia/slideshow/kids/8.jpg?itok=HE4-TnTV", total_needed: 100000, country_id: 3},
{name:"Dig a well in rural Ghana", description: "Villagers have to walk an hour to the nearest water source. By digging a well, villagers will have access to clean water.", image: "http://cdn.c.photoshelter.com/img-get/I0000QOmqw7N.7yI/s/750/019332-01.jpg", total_needed: 100000, country_id: 3},

{name:"Indigenous Learning project for Achuar community", description:"Support indigenous learning.", image:"http://www.pachamama.org/wp-content/uploads/2011/09/smiling-achuar-community.png", total_needed: 100000, country_id: 4},
{name:"Watershed Restoration", description: "Support planting trees and reforestation in watershed", image: "http://www.pro-ecuador.com/images/andes-mountains-ecuador.jpg", total_needed: 100000, country_id: 4},
{name:"Protect giant land turtle habitat", description: "Support for research and habitat protection.", image: "http://media3.washingtonpost.com/wp-srv/photo/gallery/090514/GAL-09May14-2033/media/PHO-09May14-162082.jpg", total_needed: 100000, country_id: 4}

])
