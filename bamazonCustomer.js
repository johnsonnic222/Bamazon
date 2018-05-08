var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "bamazon_DB"
});

connection.connect(function (err) {
    if (err) throw err;
    start();
});

function readProducts() {
    console.log("Displaying all products...\n");
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        console.log(res);
        connection.end();
    });
}

// function to ask customer 
function askCustomer() {
    // prompt for info about the item being bought
    inquirer
        .prompt([
            {
                product_name: "apple",
                type: "input",
                message: "What is the id of the product you want to buy?"
            },
            {
                stock_quantity: "5",
                type: "input",
                message: "How many units do you want to buy?",
                validate: function (value) {
                    if (isNaN(value) === false) {
                        return true;
                    }
                    return false;
                    console.log("Insufficient quantity!");
                }
            },
        ]);

}

function deleteProduct() {
    console.log("Deleting 5 apples...\n");
    connection.query(
        "DELETE FROM products WHERE ?",
        {
            product_name: "",
            stock_quantity: ""
        },
        function (err, res) {
            console.log(res.affectedRows + " products deleted!\n");
            // Call readProducts AFTER the DELETE completes
            readProducts();
        }
    );
}


