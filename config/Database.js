import { Sequelize } from "sequelize";

const db = new Sequelize('stametbanyuwangidb','root','',{
    host: "localhost",
    dialect: "mysql",
    logging: false
});

export default db;