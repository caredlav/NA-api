const express=require("express");
const router=express.Router();
const apiController=require("../controllers/apiController");

router.post("/register",apiController.register);

module.exports=router;