# Recipe Web Application

In this assignment, you are required to implement a dynamic web application
for the Recipe Web App, which will allow users to search for recipes.

The web app should be populated with reasonable sample data. You are
required to include at least 5 recipes from the following list from
BBC Food:

1. Spaghetti Bolognese
2. Vegan Pancakes
3. Healthy Pizza
4. Easy Lamb Biryani
5. Couscous Salad
6. Plum clafoutis
7. Mango Pie
8. Mushroom Doner

You are required to implement a MySQL database via MySQL Workbench containing
representative sample data for the purposes of testing your site and to connect
to this MySQL database from your server-side code.

Using MySQL, SQL queries and APIs were created to address known functional
requirements and demonstrate the functionalities.

For more information on the task at hand, see the `assessment.md` file in
`/doc/`.

## How do I get started?

Before you begin, ensure you have installed:

- NodeJS and all the required packages (including mysql2)
- Express and express-basic-auth packages

### Starting the database

To access the database, run:

```bash
$ mysql -u root -p
```

**Important:** It is important to use the `-u` (user) and `-p` (password) flags
to the passwords and details are not stored in your bash history.

Once you have successfully enabled MySQl, access the database by running:

```bash
MySql> use recipes;
```

Upon successful entry, your terminal prompt will now read:

```bash
MySql [recipes]>
```

### Running the application

Open a separate terminal, in the directory that your application is running in
execute the following command:

```bash
$ node index.js
```

If your activation is successful, you should see:

```bash
Recipe database listening at http://localhost:3000
```

Open your browser and point to the URL above. You should receive:

```bash
{"message":"Access successful"}
```

Each individual endpoint can now be appended to the URL. For example:

http://localhost:3000/recipes

From this URL you will be able to see the list of courses available in the
database.

## API endpoints

TO DO

## API testing

TO DO
