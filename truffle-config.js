module.exports = {
  // ...
  contracts_build_directory: "./public/contracts",
  compilers: {
    solc: {
      version: "0.8.21",
      settings: {
        evmVersion: "paris",
        optimizer: {
          enabled: true,
          runs: 200
        }
      }
    }
  }
};