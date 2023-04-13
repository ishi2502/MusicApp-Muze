const mysql = require('mysql');

const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});

exports.fetchsongs=(req,res)=>{
    const {singername}=req.params;
    console.log(singername);
    db.query(`select * from songs where Singer_name="${singername}";`,(error,result)=>{
        if(error){
            console.log("singer fetch query error");
            console.log(error);
        }
        else{
            if(result.length==0){
                console.log(result[0]);
                res.send("singer not present");
            }
            else{
                res.render('singerplaylist',{singername,message:req.session.name,arr:result});
            }
        }
    })
    
}

exports.playsong=(req,res)=>{
    const {songname}=req.params;
    console.log(songname);
    db.query(`select * from songs where Song_name="${songname}";`,(error,result)=>{
        if(error){
            console.log("song fetch query error");
            console.log(error);
        }
        else{
            if(result.length==0){
                console.log(result[0]);
                res.send("song not present");
            }
            else{
                res.render('song',{message:req.session.name,arr:result});
            }
        }
    })

}