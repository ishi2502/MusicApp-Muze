const mysql = require('mysql');
const bcrypt = require("bcryptjs");


const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});

exports.register = (req, res) => {
    console.log(req.body);

    const name = req.body.name;
    const email = req.body.mail;
    const password = req.body.pswrd;
    const passwordconfirm = req.body.reppassword;

    db.query(`SELECT email from userinfo where email = "${email}";`, async (error, result) => {
        if (error) {
            console.log(error);
            console.log("query is not executed");
        }
        console.log(result);
        if (result.length > 0) {
            return res.render('signup', { message: "That email is already in use" })
        }
        else if (password !== passwordconfirm) {
            return res.render('signup', { message: 'Passwords do not match'});
        }
        else {
            let hashedPassword = await bcrypt.hash(password, 8);
            console.log(hashedPassword);
            db.query('insert into userinfo (username,email,password) values (?,?,?);', [name, email, hashedPassword], (error, result) => {
                if (error) {
                    console.log(error);
                }
                else {
                    console.log(result);
                    //return res.render('signup', { message: "Registration Successfull" })
                    req.session.name=name;
                    return res.redirect('/');    
                }
            })
        }

    });

}

exports.login = (req, res) => {
    console.log(req.body);

    const username = req.body.username;
    const password = req.body.password;

    db.query(`select * from userinfo where username="${username}";`, async (error, result) => {
        if (error) {
            console.log(error);
            console.log("login query is not executed");
        }
        console.log(result);
        console.log("query executed");
        
        if (result.length == 0) {
            return res.render('login', { message: "Incorrect Username"})
        }
        else{
            const querypswrd=result[0].password;
            if(await bcrypt.compare(password,querypswrd)){ 
                req.session.name=username;
                return res.redirect('/');
            }
            else{
                return res.render('login',{message:"Incorrect Password"});
            }
        }

    });

}