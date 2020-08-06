// This function is for the dropDown in the navbar on computer screen
const dropDown = () => {
  // Locate the navbar
  const navBar = document.querySelector('.navbar-mobily');

  // Listen to click
  navBar.addEventListener('click', e => {
    const navContent = document.querySelector('.nav-content');
    const restOfBody = document.querySelector('.mobily_container');

    // Find the class of the element within the navbar that has been clicked on
    const targetDropDown = e.target.classList.toString();

    // toggle dropDown if the className is the good one, else remove class
    if (targetDropDown === 'nav-item' || targetDropDown === 'avatar') {
      navContent.classList.toggle('dropdown-active');
    } else {
      navContent.classList.remove('dropdown-active');
    }

    // remove class if the user clicks anywhere else
    restOfBody.addEventListener('click', () => {
      navContent.classList.remove('dropdown-active');
    });
  });
}

dropDown();
