const apiModel=require("../models/apiModel");

const apiController={
    register: async(req,res)=>{
        try {
            const info=req.body;
            const result=await apiModel.create(info);
            if (result) {
                res.status(200).json({
                    msg: result.msg
                });
            } else {
                res.status(400).json({
                    msg: result.msg
                });
            }
        } catch (error) {
            console.log(error);
        }        
    }
}

module.exports=apiController;