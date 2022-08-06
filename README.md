![](https://img.shields.io/badge/Microverse-blueviolet)

# Project Name : Recipe-App

> The Recipe app is a classic example of a Recipe website. this website shows the list of food-list, recipe, inventory and the public recipes. Users can add food and also recipes and view them if they are made public or private.

## Built With

- Ruby on Rails

## Getting Started

To get a local copy up and running follow these simple example steps.

- Clone Repository using `git clone https://github.com/denscholar/Recipe-App---ROR/`
- Move into project directory
`cd Recipe-App---ROR`

### Setup Database

- Make sure that your Postgres database is installed.
- Open the file config\database.yml
- Modify the connection parameters to point your Postgres      Database:
    `username: [your_user]`
    `password: [your_password]`

- If required drop existing database : `rake db:drop`
- Create databases: `rake db:create`
- Create db structure including tables : `rake db:migrate`
- If required seed initial data (stored in db\seeds.rb file): `rails db:seed`

### Run App

- If required (Not for testing) run `rails server`
- Visit 'http://localhost:3000/' in your browser!

## 🤝 Contributors

👤 **Elio Cortés**

- GitHub: [@NeckerFree](https://github.com/NeckerFree)
- Twitter: [@ElioCortesM](https://twitter.com/ElioCortesM)
- LinkedIn: [elionelsoncortes](https://www.linkedin.com/in/elionelsoncortes/)

👤 **Boaz Aduda**

- GitHub: [@Aduda-Boaz](https://github.com/Aduda-Boaz)
- Twitter: [@BoazAduda](https://twitter.com/BoazAduda)
- LinkedIn: [Boaz Aduda](https://www.linkedin.com/in/boaz-aduda/)

👤 **Dennis Akagha**

- GitHub: [@denscholar](https://github.com/denscholar)
- Twitter: [@dennisakagha](https://twitter.com/dennisakagha)
- LinkedIn: [Boaz Aduda](https://www.linkedin.com/in/denscholar/)

Feel free to check the [issues page](https://github.com/denscholar/Recipe-App---ROR/issues
).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse team for guidance

## 📝 License

This project is [MIT](./MIT.md) licensed.
