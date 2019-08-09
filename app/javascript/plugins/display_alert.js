import Swal from 'sweetalert2'


const displayAlert = () => {
  window.addEventListener('load', (event) => {
    const alert = document.getElementById("alert");
    if (alert){
      setTimeout(function(){
        Swal.fire({
          type: 'warning',
          title: 'Oops...',
          text: 'Sorry there is no toy to adopt around you!',
          footer: '<a href>Why do I have this issue?</a>'
        })

      }, 1000);

    }
  });


}
export { displayAlert };
