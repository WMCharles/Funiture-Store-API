# Funiture Store API

The Furniture Shop API allows developers to access and integrate the functionality of Furniture Shop with other applications. The API allows users to search for and retrieve information about furniture products, as well as place orders for furniture.

# Setup Requirements

    - Git (to clone the repository)
    - Ruby 2.7.4
    - Ruby on Rails 7.0.4
    - SQLITE3 (to run the database locally)
    - PostgreSQL (deployment)
    - Postman / Thunderclient (to test the API)
    - Railway/Render CLI (if you want to deploy to railway or render)

# Setup Installation

    - Clone the repository
    - Run the following commands in the repository:
        - cd <path_to_project> (if you cloned the repository)
        - bundle install
        - rails db:migrate
        - rails server 
    - Open Postman to test the API endpoints or use the following link:
        - http://localhost:3000/<the_endpoint>

## Endpoints:

1. /products - This endpoint returns a list of all the products available in the furniture shop.

2. /products/:id - This endpoint returns the details of a specific product based on its id.

3. /categories - This endpoint returns a list of all the categories of products available in the furniture shop.
4. /signup - This endpoint is used to create a new account for the user in the furniture shop.

5. /login - This endpoint is used to log in to the user's account in the furniture shop.

6. /logout - This endpoint is used to log out from the user's account in the furniture shop.

## Request parameters:

1. /products - None

2. /products/:id - id (required) - The unique ID of the product to retrieve.

3. /signup - username (required) - The desired username for the new account. Password (required) - The desired password for the new account. Email (required) - The email address associated with the new account.

4. /login - username (required) - The username of the account to log in to.
password (required) - The password of the account to log in to.

5. /logout - None

6. /categories - None

## Response format:

1. /products - An array of objects, each representing a furniture product in the shop.

2. /products/:id - A single object representing the requested furniture product.

3. /categories - An array of objects, each representing a furniture category in the shop.

4. /signup - A success or error message indicating whether the account was successfully created.

5. /login - A success or error message indicating whether the user was successfully logged in.

6. /logout - A success or error message indicating whether the user was successfully logged out.


## Known Bugs

So far so good there are no bugs related to this project.

# Support and contact details

To make a contribution to the code used or any suggestions you can click on the contact link and email me your suggestions.

- Email: wafulacharles47@gmail.com

## License
This project is under [MIT](LICENSE).


Copyright (c) 2022 Charles Wafula


[Go Back to the Top](#funiture-store-api)