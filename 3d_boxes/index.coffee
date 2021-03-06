style: """
  /* cube */
  height:100vh;
  width:100vw;
  cursor: pointer;
  zoom: 0.6;
  opacity: 0.8;
  box-sizing:border-box;

  .cubes-wrapper{
    width:720px;
    position:relative;
    margin:0;
    margin-top:calc(100vh - 7.2rem);
    margin-left:1.5rem;
    box-sizing:border-box;
  
    
  }



  .cube {
    display:inline-block;
    width: 150px;
    height: 150px;
    line-height: 150px;
    text-align: center;
    transform-style: preserve-3d;
    transform: translateZ(-100px);
    transition: transform 1s;
    cursor:pointer;
    margin-right:10px;
  }

  .face {
    position: absolute;
    width: 100%;
    height: 100%;
    background-color: #fff;
    background-position: 0 100%;
    background-size: 100% 400%;
    backface-visibility: hidden;
    transition: background-position 1s;
    font-size: 600%;
    color: #000;
  }

  /* transform the faces and use a big grad for shading */

  .face:first-child {
    transform: rotateX(90deg) translateY(50%) rotateX(-90deg);
    background-image: linear-gradient(
      rgba(0, 0, 0, 1) 10%,
      rgba(0, 0, 0, 0) 66%
    );
  }
  .face:last-child {
    transform: translateY(50%) rotateX(-90deg);
    background-image: linear-gradient(
      rgba(0, 0, 0, 0) 33%,
      rgba(0, 0, 0, 1) 90%
    );
  }

  /* some test candidates */

  #red {
    left: 25%;
  }
  #red .face {
    background-color: #c33;
  }
  #green {
    left: 50%;
    z-index: 1;
  }
  #green .face {
    background-color: #ad3;
  }
  #blue {
    left: 75%;
  }
  #blue .face {
    background-color: #3ac;
  }

  #yellow {
    left: 100%;
  }
  #yellow .face {
    background-color: yellow;
  }

  /* use the checkbox to toggle manual / autoplay */
  #manual {
    display: none;
  }
  /* auto-play */
  #manual:not(:checked) ~ .cube {
    animation: rotate 1s alternate infinite ease-in-out;
  }
  #manual:not(:checked) ~ .cube .face {
    animation: shade 1s alternate infinite ease-in-out;
  }
  @keyframes rotate {
    to {
      transform: translateZ(-100px) rotateX(90deg);
    }
  }
  @keyframes shade {
    to {
      background-position: 0 0;
    }
  }

  /* hover to animate */
  #manual:checked ~ .cube:hover {
    transform: translateZ(-100px) rotateX(90deg);
  }
  #manual:checked ~ .cube:hover > .face:first-child,
  #manual:checked ~ .cube:hover > .face:last-child {
    background-position: 0 0;
  }

  
"""


render: -> """

<div class="cubes-wrapper">
  <input id="manual" type="checkbox" checked />
  <div class="cube" id="red">
    <div class="face">Z</div>
    <div class="face">z</div>
  </div>

  <div class="cube" id="green">
    <div class="face">E</div>
    <div class="face">e</div>
  </div>

  <div class="cube" id="blue">
    <div class="face">K</div>
    <div class="face">k</div>
  </div>

  <div class="cube" id="yellow">
    <div class="face">E</div>
    <div class="face">e</div>
  </div>
</div>

"""


