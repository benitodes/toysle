const displayAlert = () => {
  const alert = document.getElementById("alert");
  alert.Swal.fire(alert{
    type: 'error',
    title: 'Oops...',
    text: 'Something went wrong!',
    footer: '<a href>Why do I have this issue?</a>'
  });
}

export { displayAlert };
