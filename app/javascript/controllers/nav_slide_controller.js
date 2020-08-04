// const navSlide = () => {
//   const burger = document.querySelector('.burger');
//   const nav = document.querySelector('.responsive-navbar_mobily');
//   const navLinks = document.querySelectorAll('.responsive-navbar_links_main')
//   const bgDarkener = document.querySelector('.sub_header_darkener');

//   burger.addEventListener('click', () => {
//     // Burger Animation
//     burger.classList.toggle('burger_animation');
//     // Toggle Nav
//     nav.classList.toggle('nav-active');
//     // Animate Links
//     navLinks.forEach((link, index) => {
//       if (link.style.animation) {
//         link.style.animation = '';
//       } else {
//         link.style.animation = `navLinkFade 0.45s ease forwards ${index / 7 + 0.5}s`;
//       }
//     });
//     // Activate bgDarkener
//     if (bgDarkener.style.display === "block") {
//       bgDarkener.style.display = "none";
//     } else {
//       bgDarkener.style.display = "block";
//     }
//   });
//   //  Close Nav on darkener click
//   bgDarkener.addEventListener('click', () => {
//     burger.classList.remove('burger_animation');
//     nav.classList.remove('nav-active');
//     navLinks.forEach((link) => {
//       link.style.animation = '';
//     });
//     bgDarkener.style.display = 'none';
//   });
// }

// navSlide();

