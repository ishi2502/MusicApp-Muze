const express=require("express");
const songController=require('../controllers/songsearch')

const router=express.Router();

router.post('/song',songController.searchsongs);

module.exports=router;