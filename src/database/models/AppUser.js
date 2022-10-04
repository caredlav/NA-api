module.exports = (sequelize, dataTypes) => {
    const AppUser = sequelize.define(`AppUser`, {
        id: {
          primaryKey: true,
          autoIncrement: true,
          type: dataTypes.INTEGER(11),
        },
        lastName:{
            type: dataTypes.STRING(20),
            allowNull: false
        },
        name:{
            type: dataTypes.STRING(20),
            allowNull: false
        },
        isMilitar:{
            type: dataTypes.TINYINT(4),
            allowNull: false
        },
        timeCreate:{
            type: dataTypes.DATE,
            allowNull: false
        },
        isTemporal:{
            type: dataTypes.TINYINT(4),
            allowNull: false
        },
        username:{
            type: dataTypes.STRING(45),
            allowNull: false
        },
        password:{
            type: dataTypes.STRING(100),
            allowNull: false
        },
        email:{
            type: dataTypes.STRING(45),
            allowNull: false
        },
        emailVerified:{
            type: dataTypes.STRING(45),
            allowNull: false
        },
        verificationToken:{
            type: dataTypes.STRING(45),
            allowNull: false
        }
      },{
          tableName: `appUser_TB`,
          timestamps: false,
      });

      return AppUser;
};