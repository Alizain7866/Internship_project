let btnAdd = document.querySelector('button');
let table = document.querySelector('table');
var Montly_limit = 5000;
var daily_limit = 3000;

let checkOutButton = document.querySelector('.News')

let nameInput = document.querySelector('#name');
let ageInput = document.querySelector('#age');
let countryInput = document.querySelector('#country');
let LocationInput = document.querySelector('#Location');
const input_1 = document.querySelector('.amount_rem_Monthly');
input_1.value = Montly_limit;
const input_2 = document.querySelector('.amount_rem_daily');
input_2.value = daily_limit;



function reciept(){

    let name = nameInput.value;
    let age = ageInput.value;
    let country = countryInput.value;
    let location = LocationInput.value;
    
    if(name=='' ||  age=='' || country=='' || location=='') {
        alert('You have Not entered a Value, Please do so to Proceed');
    }
    else{
    alert('Your Order Has Been Forwared, Thank you.');
    window.open('admin_dashboard.html');
}}




btnAdd.addEventListener('click', () => {
    let name = nameInput.value;
    let age = ageInput.value;
    let country = countryInput.value;
    let location = LocationInput.value;
    
    if(name=='' ||  age=='' || country=='' || location=='') {
        alert('You have Not entered a Value, Please do so to Proceed');
    }
    else if(country%1 !=0){
        alert('Enter a Number in the Quantity')

    }

    else{
    let template = `
                <tr>
                    <td>${name}</td>
                    <td>${age}</td>
                    <td>${country}</td>
                    <td>${location}</td>

                </tr>`;

    
    if(input_1.value==0){
        alert('Monthly Limit Reached');
    }
    if(input_2.value==0){
        alert('Daily Limit Reached');

    }
    else{
        table.innerHTML += template;
    input_1.value = input_1.value - (country*age);
    input_2.value = input_2.value - (country*age);
    }
   
}
});