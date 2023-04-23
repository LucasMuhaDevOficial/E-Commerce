module.exports = {
    HOST: "localhost",
    USER: "root",
    PASSWORD: "sua-senha",
    DB: "nome-do-banco-de-dados",
    dialect: "mysql",
    pool: {
      max: 5,
      min: 0,
      acquire: 30000,
      idle: 10000
    }
  };
  const Sequelize = require("sequelize");
  const db = require("../config.js");
  
  const Product = db.define("product", {
    name: {
      type: Sequelize.STRING
    },
    price: {
      type: Sequelize.DECIMAL(10, 2)
    },
    description: {
      type: Sequelize.TEXT
    },
    image_url: {
      type: Sequelize.STRING
    }
  });
  
  module.exports = Product;
