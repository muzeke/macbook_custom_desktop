

style: """
box-sizing:border-box;
width:100vw;
height:100vh;
 
.folders-box{
 z-index: 1;
}

.buttons-container {
  margin:20px auto;
  width: 1050px;
  height: 150px;
  border-radius: 45px;
  background: #151515;
  box-shadow: inset 0 0 2px 2px rgba(0, 0, 0, 0.5);
  z-index:-12;
}

ul {
  margin:0;
  list-style: none;
  height: inherit;
  display: flex;
  align-items: center;
  justify-content: center;

  li {
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 1px;
    height: 110px;
    width: 135px;
    background: #202020;
    border-top: 1px solid #353535;
    box-shadow: 0 15px 20px 0 rgba(0, 0, 0, 0.5);
    transition: all .5s;
    &:nth-of-type(1) {
      border-top-left-radius: 40px;
      border-bottom-left-radius: 40px;
    }
    &:last-of-type {
      border-top-right-radius: 40px;
      border-bottom-right-radius: 40px;
    }
    &:hover {
      cursor: pointer;
    }
    a {
      display: inline-block;
      color: gray;
      text-decoration: none;
      font-size: 40px;
      transition: all .5s;
    }
  }
}

.created-by {
  position: absolute;
  margin: auto;
  left: 0;
  right: 0;
  bottom: 10%;
  width: 200px;
  text-align: center;
  font-size: 10px;
  letter-spacing: 0.5em;
  text-transform: uppercase;
  p {
    color: white;
  }
  a {
    color: crimson;
    text-shadow: 0 0 15px rgba(244, 0, 0, 0.71);
    text-decoration: none;
    font-weight: 700;
    &:hover {
      text-decoration: underline;
    }
  }
}

.active {
  background: #151515;
  border-top: none;
  border-bottom: 1px solid #252525;
  box-shadow: inset 0 0 10px 1px rgba(0, 0, 0, 0.8);
}

.active-text {
  color: crimson;
  text-shadow: 0 0 15px rgba(220, 10, 10, 0.5);
}
"""

render: -> """
<div class="folders-box">
  <div class="buttons-container">
    <ul>
      <li class="active"><a href="#" class="active-text"><i class="fa fa-codepen" aria-hidden="true"></i></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></i></a></li>
   <li><a href="#"></i></a></li>
   <li><a href="#"></i></a></li>
    </ul>
  </div>
</div>
"""