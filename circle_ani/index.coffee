
refreshFrequency: 3600000
style: """
width:100vw;
height:100vh;
box-sizing:border-box;

.rotating-circle{
    opacity:.7;
    width:220px;
    height:220px;
    margin:calc(50vh - 110px) auto;
    border-radius:50%;
    background:url(https://data.whicdn.com/images/207580721/original.gif) -140px -135px no-repeat #f00;
   filter:hue-rotate(290deg);
   
  }
  .rotating-circle-outside{
    position:absolute;
    top:calc(50vh - 200px);
    left:calc(50vw - 200px)
    opacity:.4;
    border-radius:50%;
    pointer-events:none;
    z-index:-1;
    filter:hue-rotate(190deg);
  }
"""

render: -> """
<div class='rotating-circle'></div>
 <img class='rotating-circle-outside' src='https://i.gifer.com/7zwd.gif' />
"""