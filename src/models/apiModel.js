const db=require("../database/models");
const bcryptjs=require("bcryptjs");
const {Op}=require("sequelize");
const {sequelize}=require("../database/models");

const validateUser=async(user)=>{
    try {
       let userIfExists=await db.AppUser.findOne({
        where: {
            [Op.or]:[
                {username: user.username},
                {email: user.email}
            ]
        }
       });
       if (userIfExists) {
            return true;
       } else {
            return false;
       }
    } catch (error) {
        console.log(error);
    }    
}

const apiModel={
    create: async(user)=>{
        try {
            let valid=Object.values(user);
            let err=[];
            valid.forEach(item=>{
                if(item==''){
                    err.push("error");
                }
            });
            if (err.length>0) {
                return result={
                    status: false,
                    msg: "Hay "+err.length+" campos vacios que deben ser llenados"
                }
            }else if(await validateUser(user)){
                return result={
                    status: false,
                    msg: "El usuario o el email ya esta en uso."
                }
            }else if(user.email!=user.email_verified){
                return result={
                    status: false,
                    msg: "La verificacion de email ha fallado. Revise nuevamente que los campos sean iguales."
                }
            }else{
                await db.AppUser.create({
                    lastName: user.lastName,
                    name: user.name,
                    isMilitar: user.militar,
                    timeCreate: user.date,
                    isTemporal: user.temporal,
                    username: user.username,
                    password: bcryptjs.hashSync(user.password,10),
                    email: user.email,
                    emailVerified: user.email_verified,
                    verificationToken: user.token
                });

                const userCreated= await db.AppUser.findOne({
                    where:{username: user.username, email: user.email}
                });

                const documentUsed= await db.TypeDocument.findOne({
                    where:{nameTypeDocument: user.type_document}
                });            
        
                await db.UserDocument.create({
                    appUser_TB_id: parseInt(userCreated.id),
                    typeDocument_TB_id: parseInt(documentUsed.id),
                    document: user.document,
                    placeExpedition: user.place_expedition,
                    dateExpedition: user.date_expedition
                });

                // const countryUsed=await db.Country.findOne({
                //     where: {countryName: user.country}
                // });

                // await db.ContactInfo.create({                      
                //     address: user.address,
                //     city: user.city,
                //     phone: user.phone,
                //     celPhone: user.celphone,
                //     emergencyName: user.emergency_name,
                //     emergencyPhone: user.emergency_phone,
                //     appUser_TB_id: /*parseInt(userCreated.id)*/1,
                //     country_TB_id: /*parseInt(countryUsed.id)*/1,
                // });

                return result={
                    status: true,
                    msg: "Se creo el usuario"
                }
            }
        } catch (error) {
            console.log(error);
            return error;
        }
    }
}

module.exports=apiModel;