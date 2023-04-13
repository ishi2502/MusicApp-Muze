const express=require("express");
const singerController=require('../controllers/singers')

const router=express.Router();

router.get('/:singername',singerController.fetchsongs);
router.get('/:singername/:songname',singerController.playsong);

module.exports=router;