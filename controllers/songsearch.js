const mysql = require('mysql');

const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});

exports.searchsongs=(req,res)=>{
    console.log(req.body);
    var songname=req.body.songname;
    songname=songname.split(" ").join("-");
    console.log(songname);
    db.query(`select * from songs where Song_name="${songname}";`,(error,result)=>{
        if(error){
            console.log("song fetch query error");
            console.log(error);
        }
        else{
            if(result.length==0){
                console.log(result[0]);
                res.render('search',{data:"This song is not available",message:req.session.name,arr:result});
            }
            else{
                res.render('song',{message:req.session.name,arr:result});
            }
        }
    })
    
}