import logo from './logo.svg';
import "./App.css";

function App() {
  return (
    <div className="faucet-wrapper">
      <div className="faucet"></div>
      <div className="balance-view is-size-2">
        Current Balance: <strong>10</strong> ETH
      </div>
      <button className="btn mr-4">Donate</button>
      <button className="btn">Withdraw</button>
    </div>
  );
}

export default App;
