const express = require("express");

const router = express.Router();

router.get('/', (req, res) => {
    console.log(req.session.name);

    if(req.session.name){
        res.render("index", {message:req.session.name});
    }else{
        res.render("index", {message:""});
    }
})
router.get("/logout",(req,res)=>{
    req.session.destroy();
    res.redirect("/");
})
router.get("/signup", (req, res) => {
    res.render("signup",{message:""});
});
router.get("/login", (req, res) => {
    res.render("login",{message:""});
});
router.get("/search", (req, res) => {
    if(req.session.name){
        res.render("search",{data:"",message:req.session.name});
    }else{
        res.render("search",{data:"",message:""});
    }
});

module.exports = router;