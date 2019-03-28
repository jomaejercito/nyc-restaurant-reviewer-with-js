User.create(name: "Joma", email: "joma@gmail.com",  password: "password")
User.create(name: "Jenel", email: "jenel@gmail.com",  password: "password")
User.create(name: "Demetria", email: "demetria@gmail.com",  password: "password")
User.create(name: "Francis", email: "francis@gmail.com",  password: "password")
User.create(name: "Tom", email: "tom@gmail.com",  password: "password")
User.create(name: "Dan", email: "dan@gmail.com",  password: "password")
User.create(name: "Pablo", email: "pablo@gmail.com",  password: "password")
User.create(name: "Vivian", email: "vivian@gmail.com",  password: "password")


Cuisine.create(name: "Chinese") #1
Cuisine.create(name: "Japanese") #2
Cuisine.create(name: "Korean") #3
Cuisine.create(name: "Thai") #4
Cuisine.create(name: "Vietnamese") #5
Cuisine.create(name: "Filipino") #6
Cuisine.create(name: "Asian Fusion") #7
Cuisine.create(name: "European Fusion") #8
Cuisine.create(name: "French") #9
Cuisine.create(name: "Italian") #10
Cuisine.create(name: "Spanish") #11
Cuisine.create(name: "Greek") #12
Cuisine.create(name: "Moroccan") #13
Cuisine.create(name: "Lebanese") #14
Cuisine.create(name: "Middle Eastern") #15
Cuisine.create(name: "Indian") #16
Cuisine.create(name: "Mexican") #17
Cuisine.create(name: "Brazilian") #18
Cuisine.create(name: "Cuban") #19
Cuisine.create(name: "Peruvian") #20
Cuisine.create(name: "Jamaican/Caribbean") #21
Cuisine.create(name: "American") #22
Cuisine.create(name: "Other") #

Neighborhood.create(name: "Downtown Manhattan")
Neighborhood.create(name: "Midtown")
Neighborhood.create(name: "Upper West Side")
Neighborhood.create(name: "Upper East Side")
Neighborhood.create(name: "Upper Manhattan")

Restaurant.create(name: "Nobu Downtown", address: "195 Broadway, New York, NY 10007", cuisine_id: 2, neighborhood_id: 1)
Restaurant.create(name: "Augustine", address: "5 Beekman St, New York, NY 10038", cuisine_id: 9, neighborhood_id: 1)
Restaurant.create(name: "The Odeon", address: "145 W Broadway, New York, NY 10013", cuisine_id: 9, neighborhood_id: 1)
Restaurant.create(name: "Chinese Tuxedo", address: "5 Doyers St, New York, NY 10013", cuisine_id: 1, neighborhood_id: 1)
Restaurant.create(name: "Indochine", address: "430 Lafayette St, New York, NY 10003", cuisine_id: 5, neighborhood_id: 1)
Restaurant.create(name: "Cipriani Downtown", address: "376 W Broadway, New York, NY 10012", cuisine_id: 10, neighborhood_id: 1)
Restaurant.create(name: "Balthazar", address: "80 Spring St, New York, NY 10012", cuisine_id: 9, neighborhood_id: 1)
Restaurant.create(name: "Babbo", address: "110 Waverly Pl, New York, NY 10011", cuisine_id: 10, neighborhood_id: 1)
Restaurant.create(name: "Baby Brasa", address: "173 7th Ave S, New York, NY 10014", cuisine_id: 20, neighborhood_id: 1)
Restaurant.create(name: "Buddakan", address: "75 9th Ave, New York, NY 10011", cuisine_id: 7, neighborhood_id: 1)
Restaurant.create(name: "Cafe Mogador", address: "101 St Marks Pl # 1, New York, NY 10009", cuisine_id: 13, neighborhood_id: 1)
Restaurant.create(name: "Miss Lily's 7A'", address: "109 Avenue A, New York, NY 10009", cuisine_id: 21, neighborhood_id: 1)
Restaurant.create(name: "Le Bernardin", address: "155 W 51st St, New York, NY 10019", cuisine_id: 9, neighborhood_id: 2)
Restaurant.create(name: "Fogo de Chao", address: "40 W 53rd St, New York, NY 10019", cuisine_id: 18, neighborhood_id: 2)
Restaurant.create(name: "Sakagura", address: "211 E 43rd St, B1, New York, NY 10017", cuisine_id: 2, neighborhood_id: 2)
Restaurant.create(name: "Scarpetta", address: "88 Madison Ave, New York, NY 10016", cuisine_id: 10, neighborhood_id: 2)
Restaurant.create(name: "Keens Steakhouse", address: "72 W 36th St, New York, NY 10018", cuisine_id: 22, neighborhood_id: 2)
Restaurant.create(name: "BCD Tofu House", address: "5 W 32nd St, New York, NY 10001", cuisine_id: 3, neighborhood_id: 2)
Restaurant.create(name: "Barn Joo 35", address: "34 W 35th St, New York, NY 10001", cuisine_id: 3, neighborhood_id: 2)
Restaurant.create(name: "Pio Pio 8", address: "604 10th Ave, New York, NY 10036", cuisine_id: 20, neighborhood_id: 2)
Restaurant.create(name: "Calle Ocho", address: "45 W 81st St, New York, NY 10024", cuisine_id: 17, neighborhood_id: 3)
Restaurant.create(name: "Sushi Yasaka", address: "251 W 72nd St, New York, NY 10023", cuisine_id: 2, neighborhood_id: 3)
Restaurant.create(name: "Pasha", address: "70 W 71st St, New York, NY 10023", cuisine_id: 15, neighborhood_id: 3)
Restaurant.create(name: "Vino Levantino", address: "210 W 94th St, New York, NY 10025", cuisine_id: 12, neighborhood_id: 3)
Restaurant.create(name: "Up Thai", address: "1411 2nd Ave, New York, NY 10021", cuisine_id: 4, neighborhood_id: 4)
Restaurant.create(name: "Uva", address: "1486 2nd Ave, New York, NY 10075", cuisine_id: 10, neighborhood_id: 4)
Restaurant.create(name: "Philippe", address: "33 E 60th St, New York, NY 10065", cuisine_id: 1, neighborhood_id: 4)
Restaurant.create(name: "Sojourn", address: "244 E 79th St, New York, NY 10075", cuisine_id: 4, neighborhood_id: 4)
Restaurant.create(name: "Red Rooster", address: "310 Lenox Ave, New York, NY 10027", cuisine_id: 22, neighborhood_id: 5)
Restaurant.create(name: "ROKC", address: "3452 Broadway New York, NY 10031", cuisine_id: 2, neighborhood_id: 5)
Restaurant.create(name: "Sylvia’s Restaurant", address: "328 Malcolm X Blvd New York, NY 10027", cuisine_id: 22, neighborhood_id: 5)




Review.create(user_id: 1, restaurant_id: 1, rating: 4, comment: "Nobu Downtown is a great place to have a date or drinks with friends. I highly recommend the rock shrimp.")
Review.create(user_id: 1, restaurant_id: 29, rating: 4, comment: "I came here because I'm a fan of Marcus Samuelsson and I'm glad that the food did not disappoint!")
Review.create(user_id: 1, restaurant_id: 5, rating: 5, comment: "Indochine is probably my favorite restaurant in NYC. The food and ambiance are incredible.")
Review.create(user_id: 1, restaurant_id: 18, rating: 4, comment: "BCD Tofu is my go-to place for korean food. Generous servings and excellent taste.")
Review.create(user_id: 1, restaurant_id: 9, rating: 5, comment: "This is one of my favorite restaurants. The food is amazing and so is the ambiance. The food is definitely worth the price.")
Review.create(user_id: 1, restaurant_id: 13, rating: 5, comment: "I had the best meal of my life here. This is hands-down one of the best in the world.")
Review.create(user_id: 1, restaurant_id: 27, rating: 3, comment: "Although the decor inside is nice, the food tastes very average and is not worth the high price.")
Review.create(user_id: 1, restaurant_id: 11, rating: 5, comment: "Cafe Mogador is one of my most favorite restaurants. The Lamb Tagine is one of the greatest dishes I've ever had in my life. This place serves incredible food. The line can get crazy sometimes but to me it is worth the wait.")
Review.create(user_id: 2, restaurant_id: 2, rating: 4, comment: "Very beautiful restaurant. I think that the food does not justify its price.")
Review.create(user_id: 2, restaurant_id: 12, rating: 5, comment: "I had the most phenomenal time here for Sunday brunch. The vibe was incredible. It is a fun spot with great food.")
Review.create(user_id: 2, restaurant_id: 5, rating: 5, comment: "I was here for a birthday dinner and I had a blast. The food and ambiance were world-class.")
Review.create(user_id: 2, restaurant_id: 20, rating: 5, comment: "The food here was incredible. Price was more than reasonable.")
Review.create(user_id: 2, restaurant_id: 16, rating: 3, comment: "I was very disappointed with my experience. I thought the food would be a lot better, but it was so generic.")
Review.create(user_id: 2, restaurant_id: 6, rating: 3, comment: "It's a great place to hangout with friends and spot celebrities but the food is extremely overrated.")
Review.create(user_id: 2, restaurant_id: 9, rating: 5, comment: "I highly enjoyed my dining experience here. Not only was the food great, I was shocked with how amazing the coffee here is!")
Review.create(user_id: 3, restaurant_id: 9, rating: 5, comment: "This place has the best ceviche ever and the owner is really hot.")
Review.create(user_id: 3, restaurant_id: 10, rating: 4, comment: "The vibe is a little too pretentious for me but the restaurant is beautiful.")
Review.create(user_id: 3, restaurant_id: 6, rating: 5, comment: "Literally my favorite restaurant in NYC. It's a celebrity hotspot and I always see someone famous there. Also, the bread basket they have is the best bread basket ever.")
Review.create(user_id: 4, restaurant_id: 2, rating: 4, comment: "One of my favorite spots in the city. Perfect for a date. Food is pricey but worth it.")
Review.create(user_id: 4, restaurant_id: 25, rating: 4, comment: "The food is great but I've been to better Thai places.")
Review.create(user_id: 4, restaurant_id: 23, rating: 4, comment: "The food was actually quite impressive.")
Review.create(user_id: 4, restaurant_id: 14, rating: 4, comment: "Although the food tasted great, I thought that the price was too expensive")
Review.create(user_id: 4, restaurant_id: 13, rating: 5, comment: "Best Michelin Star restaurant in NYC. There, I said it.")
Review.create(user_id: 4, restaurant_id: 11, rating: 5, comment: "One of my favorite restaurants. The food is great and the overall vibe is really cool.")
Review.create(user_id: 5, restaurant_id: 18, rating: 4, comment: "Great spot for Korean food!")
Review.create(user_id: 5, restaurant_id: 25, rating: 4, comment: "Delicious!")
Review.create(user_id: 5, restaurant_id: 20, rating: 5, comment: "Delicious!")
Review.create(user_id: 6, restaurant_id: 7, rating: 4, comment: "Great place but a little overrated in my opinion")
Review.create(user_id: 6, restaurant_id: 27, rating: 5, comment: "Probably the best steakhouse in Manhattan!")
Review.create(user_id: 6, restaurant_id: 1, rating: 3, comment: "The food here does not justify the price.")
Review.create(user_id: 6, restaurant_id: 9, rating: 5, comment: "I am obsessed with this place. Everything about it is great; the food, service, ambiance, and price. I highly recommend this place.")
Review.create(user_id: 7, restaurant_id: 7, rating: 4, comment: "One of my favorite spots in SoHo.")
Review.create(user_id: 7, restaurant_id: 5, rating: 4, comment: "Amazing place. Gave it 4 stars because one of the waiters rubbed me the wrong way.")
Review.create(user_id: 7, restaurant_id: 6, rating: 4, comment: "It's a moment")
Review.create(user_id: 8, restaurant_id: 2, rating: 5, comment: "Chic crowd and exceptional food.")
Review.create(user_id: 8, restaurant_id: 25, rating: 5, comment: "This is one of the best restaurants in the UES and one of the best Thai restaurants in NYC in my opinion.")
Review.create(user_id: 8, restaurant_id: 10, rating: 5, comment: "I love the atmosphere of Buddakan. Food, drinks, and service are great. I always have a blast here.")
Review.create(user_id: 8, restaurant_id: 18, rating: 3, comment: "The food was pretty standard korean food. Nothing too special. The service could be a lot better.")
Review.create(user_id: 8, restaurant_id: 27, rating: 4, comment: "The ambiance was elegant but the food is not up to par with what I expect in a Chinese restaurant.")
Review.create(user_id: 8, restaurant_id: 14, rating: 5, comment: "The meat was so delicious I could not stop eating.")
Review.create(user_id: 8, restaurant_id: 5, rating: 5, comment: "One of the best restaurants in NYC in my opinion. Food and drinks were incredible.")
