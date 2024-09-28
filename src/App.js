import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Welcome to My React App!</h1>
        <p>This is a simple UI built with React.</p>
        <button onClick={() => alert('Button clicked!')}>Click Me</button>
      </header>
    </div>
  );
}

export default App;

