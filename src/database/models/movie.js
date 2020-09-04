'use strict';
module.exports = (sequelize, DataTypes) => {
  const Movie = sequelize.define('Movie', {
    title: DataTypes.STRING(250),
    overview: DataTypes.TEXT,
    releaseDate: DataTypes.DATE,
    poster: DataTypes.STRING(250),
  }, {
    timestamps: false,
  });

  return Movie;
};