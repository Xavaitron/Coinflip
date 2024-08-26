require('dotenv').config(); // Load .env file
require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  defaultNetwork: "sepolia",
  networks: {
    hardhat: {},
    sepolia: {
      url: process.env.API_URL, 
      accounts: [`0x${process.env.PRIVATE_KEY}`]
    }
  },
};
