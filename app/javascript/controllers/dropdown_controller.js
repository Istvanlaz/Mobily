const dropDown = () => {
  const restOfBody = document.querySelector('.app-container');
  const navItem = document.querySelector('.nav-item');
  const navContent = document.querySelector('.nav-content');
  navItem.addEventListener('click', () => {
    // Toggle Nav
    navContent.classList.toggle('dropdown-active');
  });
  //  Close Dropdown on body click
  restOfBody.addEventListener('click', () => {
    navContent.classList.remove('dropdown-active');
  });
}

dropDown();
