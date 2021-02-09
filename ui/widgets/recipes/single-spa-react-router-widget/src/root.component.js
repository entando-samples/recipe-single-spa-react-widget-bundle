import React from "react";
import { HashRouter } from "react-router-dom";
import App from "./components/App";

export default function Root(props) {
  return (
    <HashRouter>
      <App />
    </HashRouter>
  );
}
