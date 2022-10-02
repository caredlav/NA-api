const apiModel=require("../models/apiModel");

const apiController={
    register: async(req,res)=>{
        try {
            const info=req.body;
            const result=await apiModel.create(info);
            if (condition) {
                
            } else {
                
            }
        } catch (error) {
            console.log(error);
        }        
    }
}

module.exports=apiController;