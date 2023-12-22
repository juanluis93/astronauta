import { useState, useEffect } from 'react';
import './App.css';
import '@fortawesome/fontawesome-free/css/brands.css';
import './index.css';
import dumb from './imagenes/dumb.jpg';
import Modal from './Java/modal.jsx';

import 'swiper/swiper-bundle.css';

function App() {
  const [date, setDate] = useState(null);
  useEffect(() => {
    fetch("https://localhost:7255/api/Misiones")
      .then((response) => response.json())
      .then((date) => setDate(date));
  }, []);

  const [data, setData] = useState(null);
  useEffect(() => {
    fetch("https://localhost:7255/api/astronautas")
      .then((response) => response.json())
      .then((data) => setData(data));
  }, []);

  // Estado para gestionar la visibilidad del modal para cada astronauta
  const [openModals, setOpenModals] = useState({});

  const toggleModal = (astronautaId) => {
    setOpenModals((prevModals) => ({
      ...prevModals,
      [astronautaId]: !prevModals[astronautaId],
    }));
  };

  return (
    <>
      <header>
        <nav>
          <a href='#'> Inicio</a>
          <a href='#'> Sobre mi</a>
          <a href='#'> Redes sociales </a>
          <a href='#'> Servicios</a>
        </nav>
      </header>

      <div className="encabezado-img">
        <p>Nasa</p>
        <h1>Astronautas</h1>
        <p>Viendo las maravillas del espacio</p>
      </div>

      <div className="container">
        <div className='cartel'>
          <hr></hr>
        </div>
        <div className="swiper_mySwiper">
          <div className="swiper-wrapper">
            {data?.map((astronauta) => (
              <div className="swiper-slide" key={astronauta.id_n}>
                <div className='product-content'>
                  <div className='product-txt'>
                    <span></span>
                    <h3>{astronauta.nombre}</h3>

                    <p>{astronauta.descripcion}</p>

                  </div>
                  <div className='product-img'>
                    <img src={dumb} alt="" />

                  </div>
                  <ul>
                    <li>
                      <h6> Nacionalidad: {astronauta.nacionalidad}</h6>
                    </li>
                    <li> <h6> Fecha de nacimiento :{astronauta.fecha_nacimiento}</h6> </li>
                    <li> <h6> Edad: {astronauta.edad}</h6> </li>
                    <li><h6> Redes sociales: {astronauta.redes_sociales}</h6> </li>
                    <li> <h6> Estado: {astronauta.estado}</h6> </li>

                  </ul>
                </div>
                <button className='btn-1' onClick={() => toggleModal(astronauta.id_n)}> Mas</button>

                <Modal isOpen={openModals[astronauta.id_n]} onClose={() => toggleModal(astronauta.id_n)}>
                  {date ? (
                    <div>
                      {date
                        .filter((Misiones) => Misiones.id_n === astronauta.id_n)
                        .map((Misiones) => (
                          <p key={Misiones.id_misiones}>
                            <strong>Nombre:</strong> {Misiones.nombre} | <strong>Objetivo:</strong> {Misiones.objetivo}
                            <br></br>
                            <hr />
                            <strong>Fecha de iniciada:</strong> {Misiones.fecha_iniciada}
                            <br />
                            <strong>Fecha de Finalizada:</strong> {Misiones.fecha_terminada}
                          </p>
                        ))}
                    </div>
                  ) : (
                    <p>Cargando datos...</p>
                  )}
                </Modal>
              </div>
            ))}
          </div>
        </div>
      </div>
      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    </>
  );
}

export default App;