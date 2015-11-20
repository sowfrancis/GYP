# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(

	[	

		{ first_name: 'Syyrius', 

			last_name: 'Jio', 

			gender: 'M',

			email: 'xx@xxxx.com', 

			password: '11111111', 

			is_admin: 'true'
		}

	]

)

User.create(

	[	

		{ first_name: 'malika', 

			last_name: 'sala', 

			gender: 'F',

			email: 'ii@iiii.com', 

			password: '11111111', 

			is_admin: 'false'
		}

	]

	)


	User.create(

	[	

		{ first_name: 'alban', 

			last_name: 'malik', 

			gender: 'M',

			email: 'jj@jjjjj.com', 

			password: '11111111', 

			is_admin: 'false'
		}

	]

)

Event.create(

	[	

		{ name: 'Party', 


			venue: 'lomé',

			description: 'soirée spéciale', 

			address: '5 rue de lomé',

			event_date: Date.new(2016,01,4),

			hour: '21h à 06h', 

			cost: '25OO',

			places: '15',

			user_id: '2'

		}

	]

)

Event.create(

	[	

		{ name: 'la petite',  

			venue: 'douala',

			description: 'collé la petite', 

			address: '5 rue du petit pays', 

			event_date: Date.new(2015,12,31),

			hour: '21h à 15h',

			cost: '35OO',

			places: '400',

			user_id: '1'
			

		}

	]

)


Event.create(

	[	

		{ name: 'le rancho',  

			venue: 'abidjan',

			description: 'soirée coupé', 

			address: '5 rue de la princesse', 

			event_date: Date.new(2015,11,25),
			hour: '21h à 10h',

			cost: '25OO',

			places: '200',

			user_id: '3'
		

		}

	]

)


