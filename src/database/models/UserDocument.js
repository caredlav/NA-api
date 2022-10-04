module.exports = (sequelize, dataTypes) => {
    const UserDocument = sequelize.define(`UserDocument`, {
        appUser_TB_id: {
          primaryKey: true,
          type: dataTypes.INTEGER(11),
        },
        typeDocument_TB_id:{
            primaryKey: true,
            type: dataTypes.INTEGER(11),
        },
        document:{
            type: dataTypes.STRING(20),
            allowNull: false
        },
        placeExpedition:{
            type: dataTypes.STRING(60),
            allowNull: false
        },
        dateExpedition:{
            type: dataTypes.DATEONLY,
            allowNull: false
        }
      },{
          tableName: `userDocument_TB`,
          timestamps: false,
      });

      UserDocument.associate=function(models){
        UserDocument.belongsTo(models.AppUser,{
            as: "usuarios",
            foreignKey: "appUser_TB_id"
        });
      }      
    
      UserDocument.associate=function(models){
        UserDocument.belongsTo(models.TypeDocument,{
            as: "documentos",
            foreignKey: "typeDocument_TB_id"
        });
      }

      return UserDocument;
};