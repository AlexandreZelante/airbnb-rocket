import React, { useState } from "react";
import api from "../../services/api";

// import { Container } from './styles';

export default function Login({ history }) {
  const [email, setEmail] = useState("");

  async function handleSubmit(e) {
    e.preventDefault();

    const { data } = await api.post("/sessions", { email });
    const { _id } = data;
    console.log(_id);

    localStorage.setItem("user", _id);
    history.push("/dashboard");
  }

  return (
    <>
      <p>
        Ofereça <strong>spots</strong> para programadore e encontre{" "}
        <strong>talentos</strong> para seu negócio
      </p>

      <form onSubmit={handleSubmit}>
        <label htmlFor="email">E-MAIL *</label>
        <input
          type="email"
          id="email"
          value={email}
          placeholder="Seu melhor e-mail"
          onChange={event => setEmail(event.target.value)}
        />

        <button className="btn" type="submit">
          Entrar
        </button>
      </form>
    </>
  );
}
