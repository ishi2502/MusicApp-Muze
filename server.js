const express = require('express');
const path = require("path");
var session=require("express-session")


const app = express();

const dotenv = require("dotenv");
dotenv.config({ path: "./.env" });

app.use(express.static(path.join(__dirname, "/"))); //to use cssand js files
app.set("view engine", "ejs");    //to use ejs files
app.set("views", path.join(__dirname, "/views"))  //to access ejs files from anywhere
app.use(express.json()); //to support json-encoded bodies
app.use(express.urlencoded({ extended: true })); //to support url encoded bodies

app.use(session({
    secret:'ABCD1234',
    resave:false,
    saveUnitialized:true
}))

const mysql = require('mysql');
const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});

db.connect((error) => {
    if (error) {
        console.log(error);
    }
    else {
        console.log("Mysql Connected");
    }
});


//define routes
app.use('/', require('./routes/pages'));
app.use('/auth', require('./routes/auth'));
app.use('/songsearch',require('./routes/songsearch'))
app.use('/singer',require('./routes/singers'));
//errors:page not found:404
app.use((req,res,next)=>{
    var err=new Error('Page Not Found');
    err.status=404;
    next(err);
})

//handling error
app.use((err,req,res,next)=>{
    res.status(err.status||500);
    res.send(err.message);
})

app.listen(3000, () => {
    console.log("listening on port 3000");
})



