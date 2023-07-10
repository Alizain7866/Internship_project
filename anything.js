function confirm(){

    const input_pass = document.querySelector('#Password');
    const value = input_pass.value;
    if(value != '12345'){
        alert('Enter Correct Password');
    }
    else{

       window.open('admin_dashboard.html');
    }
    
}
