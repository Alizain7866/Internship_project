<%@ Page Title="" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebApplication2.Homepage" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="salesforce.css" rel="stylesheet" />
</asp:Content>
   

   

<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder1" runat="server">



  <div class="mains-tops">
    <div class="video-text">
      <video width="370" height="230" controls autoplay>
        <source src="istockphoto-1383852410-640_adpp_is.mp4" type="video/mp4">
          
      </video>
      <p class="under-video">Customer service tag: 1.56, this reference is how this video works.</p>
    </div>
    <div class="texts" id="loves">
      <h1 class="obsession">Customer-Obsessed</h1>
      <p class="information">We have countless stories about helping our customers achieve and exceed their goals. We
        provide expert services, on-demand training, and everything in between to ensure our customers maximise the
        value of Salesforce. With more than 11 million Trailblazers, you’re part of an incredible community where you
        can learn, grow, and fuel customer success in your organisation.</p>
    </div>
  </div>

  <div class="whole-box">




    <div class="box" id="a21" onclick="window.open('https://www.youtube.com/watch?v=BsDoLVMnmZs','_blank')">

      <div class="images">
        <img
          src="https://wp.salesforce.com/en-ap/wp-content/uploads/sites/14/2023/03/pb-hp-product-smb_icon-1.jpg?resize=768,433"
          alt="">
      </div>
      <div class="main-content">
        <h4>Small Business</h4>
        <p>Sell Smarter and provide support faster in a single app</p>
        <a href="https://www.youtube.com/watch?v=BsDoLVMnmZs" target="_blank">Watch a Demo</a>
      </div>

    </div>


    <!-- secondbox -->
    <div class="box" id="a22" onclick="window.open('https://www.youtube.com/watch?v=BsDoLVMnmZs','_blank')">

      <div class="images">
        <img
          src="https://wp.salesforce.com/en-ap/wp-content/uploads/sites/14/2023/03/pb-hp-product-smb_icon-1.jpg?resize=768,433"
          alt="">
      </div>
      <div class="main-content">
        <h4>Small Business</h4>
        <p>Sell Smarter and provide support faster in a single app</p>
        <a href="https://www.youtube.com/watch?v=BsDoLVMnmZs" target="_blank">Watch a Demo</a>
      </div>

    </div>
    <!--Third box-->
    <div class="box" id="a23" onclick="window.open('https://www.youtube.com/watch?v=BsDoLVMnmZs','_blank')">

      <div class="images">
        <img
          src="https://wp.salesforce.com/en-ap/wp-content/uploads/sites/14/2023/03/pb-hp-product-smb_icon-1.jpg?resize=768,433"
          alt="">
      </div>
      <div class="main-content">
        <h4>Small Business</h4>
        <p>Sell Smarter and provide support faster in a single app</p>
        <a href="https://www.youtube.com/watch?v=BsDoLVMnmZs" target="_blank">Watch a Demo</a>
      </div>

    </div>
    <div class="box" id="a24" onclick="window.open('https://www.youtube.com/watch?v=BsDoLVMnmZs','_blank')">

      <div class="images">
        <img
          src="https://wp.salesforce.com/en-ap/wp-content/uploads/sites/14/2023/03/pb-hp-product-smb_icon-1.jpg?resize=768,433"
          alt="">
      </div>
      <div class="main-content">
        <h4>Small Business</h4>
        <p>Sell Smarter and provide support faster in a single app</p>
        <a href="https://www.youtube.com/watch?v=BsDoLVMnmZs" target="_blank">Watch a Demo</a>
      </div>

    </div>

  </div>

  <div class="chartBox">
    <canvas id="myChart"></canvas>
  </div>

  <div class="selection">

    <select class="selectBox">

      <!-- <option value="" disabled selected>Select an option</option> -->
      <option value="2012">2012</option>
      <option value="2013">2013</option>
      <option value="2014">2014</option>

    </select>
  </div>

  <h2>Toggle Dark/Light Mode</h2>
  <p>Click the button to toggle between dark and light mode for this page.</p>

  <button class="buttons" type="button">Toggle dark mode</button>

  <script>
    var enables = false;
    var number = 0;
    function myFunction() {
      var element = document.body;
      element.classList.toggle("dark-mode");

      //  element.classList.toggle(".dark-mode #loves");
      number += 1;

      return number;
    }

  </script>

  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

  <script>
    const ctx = document.getElementById('myChart').getContext('2d');

    const myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['January','February', 'March','April','May','June', 'July', 'August', 'Sept', 'Oct', 'November', 'December'],
        datasets: [{
          label: 'Sales Olpers',
          data: [656, 417, 222, 217, 79, 41, 256,342,120,350, -32,500],
          borderWidth:5,
          barThickness: 30,
          backgroundColor: 'blue'
        },
      
      {
        label: 'Sales MilkPak',
          data: [656, 417, 500, 217, 79, 41, 256,342,120,350, -32,500],
          borderWidth:5,
          barThickness: 30,
          backgroundColor: 'black'
      }]
          

      },
      options: {
        barPercentage: 0.5,
        plugins:{
          legend:{

            labels:{

              font:{

                size:16,
                family:'Open Sans'
                
              }
            }
          }

        },

        scales: {
          y: {
            beginAtZero: false,
            ticks: {
              color: 'black'
            }
          },
          x: {
            beginAtZero: true,
            ticks: {
              color: 'black'
            }
          }
        }
      }
    });


    const selectBox = document.querySelector('.selectBox');

    selectBox.addEventListener('change', tracker);
    function tracker() {

      if (selectBox.value == 2012) {

        alist = [656, 417, 222, 217, 79, 41, 256,342,120,350, -32,500];
      }

      else if (selectBox.value == 2013) {

        alist = [12, 90, 100, 5, 2, 3, 90, 87, 65,45,100,800];
      }

      else {

        alist = [30, 19, 40, 5, 2, 3, 90, 87, 65,45,100,800];
      }

      myChart.data.datasets[0].data = alist;
      myChart.data.datasets[1].data = alist;
      myChart.update();
    }

    const buttons = document.querySelector('.buttons');
    const textings = document.querySelector('.information');
    const box1 = document.querySelector('#a21');
    const box2 = document.querySelector('#a22');
    const box3 = document.querySelector('#a23');
    const box4 = document.querySelector('#a24');
    const customers = document.querySelector('.obsession');
    const below = document.querySelector('.under-video');
    const a1 = document.querySelector('.active');
    const a2 = document.querySelector('.active2');
    const a3 = document.querySelector('.active3');
    const a4 = document.querySelector('.active4');
    const fimg = document.querySelector('.images');
    buttons.addEventListener('click', function () {
      const numbers_darks = myFunction();





      console.log(numbers_darks);
      if (numbers_darks % 2 == 0) {

        myChart.data.datasets[0].borderColor = 'white';
        myChart.data.datasets[1].borderColor = 'white';
        myChart.data.datasets[0].backgroundColor = 'black';
        myChart.data.datasets[1].backgroundColor = 'blue';

        myChart.options.scales.y.ticks.color = 'black';
        myChart.options.scales.x.ticks.color = 'black';

        // console.log(myChart.data.datasets[0].label) ;

        // myChart.options.plugins.legend.labels.color = 'red';
        myChart.update();
        textings.style.color = "black";
        box1.style.backgroundColor = "white";
        box2.style.backgroundColor = "white";
        box3.style.backgroundColor = "white";
        box4.style.backgroundColor = "white";


        customers.style.color = 'black';
        below.style.color = 'black';

        a1.style.color = 'black';
        a2.style.color = 'black';
        a3.style.color = 'black';
        a4.style.color = 'black';


      }
      else {
        myChart.data.datasets[0].backgroundColor = 'white';
        myChart.data.datasets[1].backgroundColor = 'white';
        textings.color = 'white';
        myChart.options.scales.y.ticks.color = 'white';
        myChart.options.scales.x.ticks.color = 'white';
        myChart.data.datasets[0].borderColor = 'blue';
        myChart.data.datasets[1].borderColor = 'green';
        myChart.update();
        textings.style.color = "white";

        box1.style.backgroundColor = "black";
        box2.style.backgroundColor = "black";
        box3.style.backgroundColor = "black";
        box4.style.backgroundColor = "black";
        customers.style.color = 'white';
        below.style.color = 'white';
        // const newimage = fimg.replaceWith('R.jpeg');
        a1.style.color = 'white';
        a2.style.color = 'white';
        a3.style.color = 'white';
        a4.style.color = 'white';

      }



      // console.log('Besabriyannn');
    });



  </script>

        </asp:Content>
