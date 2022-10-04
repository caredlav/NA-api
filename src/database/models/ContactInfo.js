module.exports = (sequelize, dataTypes) => {
    const ContactInfo = sequelize.define(`ContactInfo`, { 
        id: {
            primaryKey: true,
            autoIncrement: true,
            type: dataTypes.INTEGER(11),
        },       
        address:{
            type: dataTypes.STRING(60),
            allowNull: false
        },
        city:{
            type: dataTypes.STRING(50),
            allowNull: false
        },
        phone:{
            type: dataTypes.STRING(20),
            allowNull: false
        },
        celPhone:{
            type: dataTypes.STRING(20),
            allowNull: false
        },
        emergencyName:{
            type: dataTypes.STRING(100),
            allowNull: false
        },
        emergencyPhone:{
            type: dataTypes.STRING(20),
            allowNull: false
        }
      },{
          tableName: `contactInfo_TB`,
          timestamps: false,
      });
    
      ContactInfo.associate=function(models){
        ContactInfo.belongsTo(models.AppUser,{
            as: "usuarios",
            foreignKey: "appUser_TB_id"
        });
      }

      ContactInfo.associate=function(models){
        ContactInfo.belongsTo(models.Country,{
            as: "paises",
            foreignKey: "country_TB_id"
        });
      }

      return ContactInfo;
};