var button_clicked = false;
function Make_editable(){
        alert('Now you can edit the details')
    button_clicked=true; 
    
    var input_1 = document.querySelector('.Inputs_1');
    input_1.readOnly = false;

      

    var input_2 = document.querySelector('.Inputs_2');
    input_2.readOnly = false;
    

    var input_3 = document.querySelector('.Inputs_3');
    input_3.readOnly = false;
      
    
    var input_4 = document.querySelector('.Inputs_4');
    input_4.readOnly = false;
    
    
    var input_5 = document.querySelector('.Inputs_5');
    input_5.readOnly = false;
   
}    

function edit_1(){
    if(button_clicked){
    var input_1 = document.querySelector('.Inputs_1');
   
    input_1.value = '';
} 
    
}


function edit_2(){
    if(button_clicked){
    var input_2 = document.querySelector('.Inputs_2');
    
    input_2.value = ''; 
    }
}
function edit_3(){

    if(button_clicked){ 
           var input_3 = document.querySelector('.Inputs_3');
        input_3.type = 'text';
    input_3.value = ''; 
}
}
function edit_4(){
    if(button_clicked){
    var input_4 = document.querySelector('.Inputs_4');
        input_4.value = ''; 
    
}}
function edit_5(){
    if(button_clicked){

    
    var input_5 = document.querySelector('.Inputs_5');
    
    input_5.value = ''; 
    }
}



function saved_changes(){
    if(button_clicked){
        
    alert('Changes have been saved');
    window.open('admin_dashboard.html');
}
}