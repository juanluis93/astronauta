import { useState, useEffect } from 'react';
import './App.css'
import '@fortawesome/fontawesome-free/css/brands.css';
import Neil from './imagenes/Neil.jpg';
import './index.css'
import Jasmin from './imagenes/Jasmin.jpg'
import Lora from './imagenes/Lora.jpg'

//import React, { useEffect } from 'react';

import 'swiper/swiper-bundle.css';
function App() {
  const [data, setData] = useState(null);
  useEffect(() => {
    fetch("https://localhost:7255/api/astronautas")
      .then((Response) => Response.json())
      .then((data) => setData(data));
  }, []);

  return (
    <>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/css/brands.min.css" />
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

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

            <div className="swiper-slide">

              <div className='product-content'>
                <div className='product-txt'>
                  <span></span>
                  <h3> nail</h3>

                  {data?.map((astronautas) => (<p key={astronautas.id_n}> {astronautas.descripcion}</p>))}

                </div>
                <div className='product-img'>
                  <img src={Neil} alt="" />
                </div>
              </div>
              <a href='#' className='btn-1'> Mas</a>
            </div>

          </div>
        </div>

        <div className="Cont1">
          <div className="swiper-wrapper">

            <div className="swiper-slide">

              <div className='product-content'>
                <div className='product-txt'>
                  <span></span>
                  <h3> Jasmin Moghbeli</h3>

                  Lorem ipsum dolor sit amet consectetur adipisicing elit.
                  Distinctio nam fugit voluptates accusamus rerum ipsam, quae ratione impedit provident eum in adipisci nostrum odit nesciunt autem sit, tempore similique ducimus.


                </div>
                <div className='product-img1'>
                  <img src={Jasmin} alt="" />
                </div>
              </div>
              <a href='#' className='btn-1'> Mas</a>
            </div>

          </div>
        </div>

        <div className="Cont2">
          <div className="swiper-wrapper">

            <div className="swiper-slide">

              <div className='product-content'>
                <div className='product-txt'>
                  <span></span>
                  <h3> loral Ohara</h3>
                  <p>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et labore rerum nihil impedit illo voluptatum,
                    perferendis pariatur provident ex, qui officia tempore deleniti. Excepturi, ex iusto dignissimos molestiae itaque dolores.
                  </p>
                </div>
                <div className='product-img2'>
                  <img src={Lora} alt="" />
                </div>
              </div>
              <a href='#' className='btn-1'> Mas</a>
            </div>
          </div>
        </div>

        <div className="Cont3">
          <div className="swiper-wrapper">

            <div className="swiper-slide">

              <div className='product-content'>
                <div className='product-txt'>
                  <span></span>
                  <h3> nail</h3>
                  <p>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et labore rerum nihil impedit illo voluptatum,
                    perferendis pariatur provident ex, qui officia tempore deleniti. Excepturi, ex iusto dignissimos molestiae itaque dolores.
                  </p>
                </div>
                <div className='product-img3'>
                  <img src={Neil} alt="" />
                </div>
              </div>
              <a href='#' className='btn-1'> Mas</a>
            </div>
          </div>
        </div>
        <div className="Cont4">
          <div className="swiper-wrapper">

            <div className="swiper-slide">

              <div className='product-content'>
                <div className='product-txt'>
                  <span></span>
                  <h3> nail</h3>
                  <p>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et labore rerum nihil impedit illo voluptatum,
                    perferendis pariatur provident ex, qui officia tempore deleniti. Excepturi, ex iusto dignissimos molestiae itaque dolores.
                  </p>
                </div>
                <div className='product-img4'>
                  <img src={Neil} alt="" />
                </div>
              </div>
              <a href='#' className='btn-1'> Mas</a>
            </div>

          </div>
        </div>
        <div className="Cont5">
          <div className="swiper-wrapper">

            <div className="swiper-slide">

              <div className='product-content'>
                <div className='product-txt'>
                  <span></span>
                  <h3> nail</h3>
                  <p>
                    Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et labore rerum nihil impedit illo voluptatum,
                    perferendis pariatur provident ex, qui officia tempore deleniti. Excepturi, ex iusto dignissimos molestiae itaque dolores.
                  </p>
                </div>
                <div className='product-img5'>
                  <img src={Neil} alt="" />
                </div>
              </div>
              <a href='#' className='btn-1'> Mas</a>
            </div>
          </div>
        </div>
      </div >

      <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    </>
  )
}

export default App
