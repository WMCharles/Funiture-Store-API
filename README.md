# Funiture Store API

The Furniture Shop API allows developers to access and integrate the functionality of Furniture Shop with other applications. The API allows users to search for and retrieve information about furniture products, as well as place orders for furniture.

## Setup Requirements

    - Git (to clone the repository)
    - Ruby 2.7.4
    - Ruby on Rails 7.0.4
    - SQLITE3 (to run the database locally)
    - PostgreSQL (deployment)
    - Postman / Thunderclient (to test the API)
    - Railway/Render CLI (if you want to deploy to railway or render)

## Setup Installation

    - Clone the repository
    - Run the following commands in the repository:
        - cd <path_to_project> (if you cloned the repository)
        - bundle install
        - rails db:migrate
        - rails server 
    - Open Postman to test the API endpoints or use the following link:
        - http://localhost:3000/<the_endpoint>

## Endpoints:

1. `/products` - This endpoint returns a list of all the products available in the furniture shop.

2. `/products/:id` - This endpoint returns the details of a specific product based on its id.

3. `/categories` - This endpoint returns a list of all the categories of products available in the furniture shop.

4. `/signup` - This endpoint is used to create a new account for the user in the furniture shop.

5. `/login` - This endpoint is used to log in to the user's account in the furniture shop.

6. `/me` - This endpoint keeps the user logged in using session cookies

7. `/logout` - This endpoint is used to log out from the user's account in the furniture shop.


## Request parameters:

1. `/products` - None

2. `/products/:id` - id (required) - The unique ID of the product to retrieve.

3. /signup - username (required) - The desired username for the new account. Password (required) - The desired password for the new account. Email (required) - The email address associated with the new account.

```
{
  "username":"testuser",
  "email":"testuser@example.com",
  "password":"xxxxxxxx",
  "password_confirmation":"xxxxxxxx"
}
```

4. `/login` - username (required) - The username of the account to log in to.
password (required) - The password of the account to log in to.

```
{
  "username":"testuser",
  "password":"xxxxxxxx",
}
```

5. `/logout` - None

6. `/categories` - None

## Response format:

1. `GET /products` - An array of objects, each representing a furniture product in the shop.
```
[
  {
    "id": 9,
    "title": "Foster 8 Seater Dining Set",
    "description": "Create lifetime memories while dinning with family and friends using this high quality 8 Seater Dining Set.  The set is tied off nicely with a set of 8 high quality wooden dining chairs. It will surely be the center piece of your home.",
    "image_url": "https://elegance.co.ke/pub/media/catalog/product/cache/8d8a0146498f1100582724fca223eeb2/f/o/foster_1.jpg",
    "price": 129995,
    "category": {
      "name": "Dining"
    }
  },
  {
    "id": 10,
    "title": "Vickie 4 Seater Dining Set",
    "description": "Show your home some love by adding this classy dining set.\n\nIt accommodates 4 and comes with a large table, offering plenty room for everyone.\n\nIts seats are also cushioned, making meal times a comfy affair.",
    "image_url": "https://elegance.co.ke/pub/media/catalog/product/cache/b7c3a6b28eb4432f8bd6c315e4890c68/v/i/vickie_1.jpg",
    "price": 59995,
    "category": {
      "name": "Dining"
    }
  }
]
```

2. `GET /products/:id` - A single object representing the requested furniture product.

```
{
  "id": 9,
  "title": "Foster 8 Seater Dining Set",
  "description": "Create lifetime memories while dinning with family and friends using this high quality 8 Seater Dining Set.  The set is tied off nicely with a set of 8 high quality wooden dining chairs. It will surely be the center piece of your home.",
  "image_url": "https://elegance.co.ke/pub/media/catalog/product/cache/8d8a0146498f1100582724fca223eeb2/f/o/foster_1.jpg",
  "price": 129995,
  "quantity": 1,
  "category": {
    "name": "Dining"
  },
  "reviews": []
}
```

3. `GET /categories` - An array of objects, each representing a furniture category in the shop.

```
[
  {
    "id": 1,
    "name": "Living-Room",
    "description": "Funiture intended for user in the living room."
  },
  {
    "id": 2,
    "name": "Kitchen",
    "description": "Pieces of furniture in a kitchen, like cabinets, countertops, sinks, and so forth."
  },
  {
    "id": 3,
    "name": "Dining",
    "description": "Furniture intended for use in a dining room. These items include tables and chairs."
  },
  {
    "id": 4,
    "name": "Bedroom",
    "description": "Funiture intended for user in the bedroom."
  }
]
```

4. `POST /signup` - A success (user object) or error message indicating whether the account was successfully created.

```
{
  "errors": [
    "Password can't be blank",
    "Username can't be blank",
    "Email can't be blank",
    "Password is too short (minimum is 8 characters)"
  ]
}
```

5. `POST /login` - A success (user object) or error message indicating whether the user was successfully logged in.

```
{
  "errors": [
    "Invalid username or password"
  ]
}
```

6. `POST /logout` - A success or error message indicating whether the user was successfully logged out.


## Known Bugs

So far so good there are no bugs related to this project.

## Support and contact details

To make a contribution to the code used or any suggestions you can click on the contact link and email me your suggestions.

- Email: wafulacharles47@gmail.com

## License
This project is under [MIT](LICENSE).


Copyright (c) 2022 Charles Wafula


[Go Back to the Top](#funiture-store-api)
