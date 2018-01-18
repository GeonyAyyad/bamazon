var mysql = require("mysql");
var inquirer = require("inquirer");


var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "bamazon_DB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  queryproducts();
});

function queryAllSongs() {
  connection.query("SELECT * FROM products where item_id=?", function(err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(res[i].id + " | " + res[i].title + " | " + res[i].artist + " | " + res[i].genre);
    }
    console.log("-----------------------------------");
  });
}



inquirer
  .prompt([
    // Here we create a basic text prompt.
    {
      type: "input",
      message: "Hello! What is your name?",
      name: 'customer_name'
    },

    {
      type: "input",
      message: "What ID are you trying to find?",
      name: "item_id"
    },
    {
      type: "input",
      message: "How many of these items do you want?",
      name: "confirm",
      default: true
    },
    
    
  ])
  .then(function(inquirerResponse) {
    // If the inquirerResponse confirms, we displays the inquirerResponse's username and pokemon from the answers.
    if (inquirerResponse.confirm) {
      console.log("\nWelcome " + inquirerResponse.customer_name);
      console.log("Your " + inquirerResponse.item_id + " is ready for battle!\n");
    }
    else {
      console.log("\nThat's okay " + inquirerResponse.customer_name + ", come again when you are more sure.\n");
    }
  });