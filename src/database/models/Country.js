module.exports = (sequelize, dataTypes) => {
    const Country = sequelize.define(`Country`, {
        id: {
          primaryKey: true,
          autoIncrement: true,
          type: dataTypes.INTEGER(11),
        },
        countryCode:{
            type: dataTypes.STRING(4),
            allowNull: false
        },
        countryName:{
            type: dataTypes.STRING(100),
            allowNull: false
        }
      },{
          tableName: `country_TB`,
          timestamps: false,
      });

      return Country;
};