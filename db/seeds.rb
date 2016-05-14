# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
listing_durations = ListingDuration.create([{ name: 'Days_1' }, { name: 'Days_10' }, { name: 'Days_90' }, { name: 'Days_120' }, { name: 'Days_14' }, { name: 'Days_21' }, { name: 'Days_3' }, { name: 'Days_30' }, { name: 'GTC' }])


listing_types = ListingType.create([{ name: 'AdType' }, { name: 'Auction' }, { name: 'Chinese' }, { name: 'FixedPriceItem' }, { name: 'Half' }, { name: 'LeadGeneration' }, { name: 'PersonalOffer' }, { name: 'Shopping' }, { name: 'Unknown' }])



condition_types = ConditionType.create([{ name: 'New' }, { name: 'New Other' }, { name: 'New with defects' }, { name: 'Manufacturer refurbished' }, { name: 'Seller refurbished' }, { name: 'Used' }, { name: 'Very Good' }, { name: 'Good' }, { name: 'Acceptable' }])