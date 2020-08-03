const navSlide = () => {
  const restOfBody = document.querySelector('.app-container');
  const burger = document.querySelector('.burger');
  const nav = document.querySelector('.responsive-navbar_mobily');
  const navLinks = document.querySelectorAll('.responsive-navbar_links')
  burger.addEventListener('click', () => {
    // Toggle Nav
    nav.classList.toggle('nav-active');
    // Animate Links
    navLinks.forEach((link, index) => {
      if (link.style.animation) {
        link.style.animation = '';
      } else {
        link.style.animation = `navLinkFade 0.45s ease forwards ${index / 7 + 0.5}s`;
      }
    });
    // Burger Animation
    burger.classList.toggle('burger_animation');
  });
  //  Close Nav on body click
  restOfBody.addEventListener('click', () => {
    nav.classList.remove('nav-active');
    burger.classList.remove('burger_animation');
    navLinks.forEach((link) => {
      link.style.animation = '';
    });
  });
}

navSlide();
