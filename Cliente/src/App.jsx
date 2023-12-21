import { useState, useEffect } from 'react';
import './App.css'
import '@fortawesome/fontawesome-free/css/brands.css';
import './index.css'
import dumb from './imagenes/dumb.jpg'
import Modal from './Java/modal.jsx';

//import React, { useEffect } from 'react';

import 'swiper/swiper-bundle.css';

function App() {
  const [openModal, setOpenmModal] = useState(false)
  const [data, setData] = useState(null);
  useEffect(() => {
    fetch("https://localhost:7255/api/astronautas")
      .then((Response) => Response.json())
      .then((data) => setData(data));
  }, []);

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
        <h1>Astrounatas</h1>
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
                </div>
                <button className='btn-1' onClick={() => setOpenmModal(!openModal)}> Mas</button>
                <Modal isOpen={openModal} onClose={() => setOpenmModal(false)}>
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam,
                    itaque, alias autem dolore laudantium distinctio minima doloribus modi natus ab recusandae, sit iure temporibus suscipit similique? Velit maxime quas incidunt?
                  </p>
                </Modal>

              </div>
            ))}
          </div>
        </div>


      </div>
      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    </>
  )
}

export default App
