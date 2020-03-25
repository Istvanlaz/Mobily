const dropDown = () => {
  const navItem = document.querySelector('.nav-item');
  const navContent = document.querySelector('.nav-content');
  navItem.addEventListener('click', () => {
    // Toggle Nav
    navContent.classList.toggle('dropdown-active');
  });
}

dropDown();
