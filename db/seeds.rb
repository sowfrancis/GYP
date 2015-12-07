# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(

	[	

		{ first_name: 'Laura', 

			last_name: 'Ingalls', 

			gender: 'M',

			email: 'la@gmail.com', 

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

			email: 'ma@gmail.com', 

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

			email: 'al@gmail.com', 

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

		{ name: 'La petite maison dans la prairie ',  

			venue: 'michigan',

			description: 'venez faire la fète avec laura et sa famille', 

			address: '5 rue du petit pays', 

			event_date: Date.new(2015,12,31),

			hour: '21h à 15h',

			cost: '35OO',

			places: '400',

			user_id: '1',
			

		}

	]

)


Event.create(

	[	

		{ name: 'le rancho',  

			venue: 'Royan',

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




