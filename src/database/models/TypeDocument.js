module.exports = (sequelize, dataTypes) => {
    const TypeDocument = sequelize.define(`TypeDocument`, {
        id: {
          primaryKey: true,
          autoIncrement: true,
          type: dataTypes.INTEGER(11),
        },
        nameTypeDocument:{
            type: dataTypes.STRING(50),
            allowNull: false
        }
      },{
          tableName: `typeDocument_TB`,
          timestamps: false,
      });

      return TypeDocument;
};