// bgDarkener
const bgDarkener = document.querySelector('.sub_header_darkener');

// dropDownSmall
const pictoUser = document.querySelector('.picto_user');
  // on pictoUser click
  const smallNavContent = document.querySelector('.small_nav_content');
  const pictoImg = document.querySelector('.picto_user_img');

// searchSmall
const searchBtnSmall = document.querySelector('.sub_header_search_btn');
  // on searchBtnSmall click
  const searchContent = document.querySelector('.sub_search_cont');
  const searchSvg = document.querySelector('.search_svg');

// navSlide
const burger = document.querySelector('.burger');
  // on burger click
  const nav = document.querySelector('.responsive-navbar_mobily');
  const navLinks = document.querySelectorAll('.responsive-navbar_links_main')



// Setting and unsetting bgDarkener
const setBgDarkener = () => {
  if (bgDarkener.style.display === "block") {
    return;
  } else {
    bgDarkener.style.display = "block";
  }
};

const unsetBgDarkener = () => {
  if (bgDarkener.style.display === "" || bgDarkener.style.display === "none") {
    return;
  } else {
    bgDarkener.style.display = "none";
  }
};



// Functions for setting each dropdowns
const setUserMenu = () => {
  // Toggle Small Dropdown
  pictoImg.classList.toggle('picto_image_active');
  smallNavContent.classList.toggle('small_dropdown_active');
};

const setSearchBar = () => {
  // Toggle Search
  searchSvg.classList.toggle('search_svg_active');
  searchContent.classList.toggle('small_search_active');
};

const setNavContainer = () => {
  // Burger Animation
  burger.classList.toggle('burger_animation');
  // Toggle Nav
  nav.classList.toggle('nav-active');
  // Animate Links
  navLinks.forEach((link, index) => {
    // Make sur that style is empty then activate it
    link.style.animation = '';
    link.style.animation = `navLinkFade 0.45s ease forwards ${index / 7 + 0.5}s`;
  });
};



// Functions for unsetting each dropdowns
const unsetUserMenu = () => {
  // Remove Small Dropdown && bgDarkener
  pictoImg.classList.remove('picto_image_active');
  smallNavContent.classList.remove('small_dropdown_active');
};

const unsetSearchBar = () => {
  // Remove Search && bgDarkener
  searchSvg.classList.remove('search_svg_active');
  searchContent.classList.remove('small_search_active');
};

const unsetNavContainer = () => {
  // Burger Animation
  burger.classList.remove('burger_animation');
  // Remove Nav
  nav.classList.remove('nav-active');
  // Animate Links
  navLinks.forEach((link, index) => {
    link.style.animation = '';
  });
};


// Using all of the above on click for each element
pictoUser.onclick = function(){
  if (pictoImg.classList.contains('picto_image_active')) {
    unsetUserMenu();
    unsetBgDarkener();
  } else {
    setBgDarkener();
    setUserMenu();
    unsetSearchBar();
    unsetNavContainer();
  }
}

searchBtnSmall.onclick = function(){
  if (searchContent.classList.contains('small_search_active')) {
    unsetSearchBar();
    unsetBgDarkener();
  } else {
    setBgDarkener();
    setSearchBar();
    unsetUserMenu();
    unsetNavContainer();
  }
}

burger.onclick = function(){
  if (nav.classList.contains('nav-active')) {
    unsetNavContainer();
    unsetBgDarkener();
  } else {
    setBgDarkener();
    setNavContainer();
    unsetSearchBar();
    unsetUserMenu();
  }
}

bgDarkener.onclick = function(){
  unsetBgDarkener();
  unsetNavContainer();
  unsetSearchBar();
  unsetUserMenu();
}

// // Former independant functionning:

// const pictoUser = document.querySelector('.picto_user');
// const searchBtnSmall = document.querySelector('.sub_header_search_btn');
// const bgDarkener = document.querySelector('.sub_header_darkener');

// const activateDarkener = () => {
//   if (bgDarkener.style.display === "block") {
//     bgDarkener.style.display = "none";
//   } else {
//     bgDarkener.style.display = "block";
//   }
// }

// const dropDownSmall = () => {
//   const smallNavContent = document.querySelector('.small_nav_content');
//   const pictoImg = document.querySelector('.picto_user_img');
//   // const btnSearch = document.querySelector('.sub_header_search_btn');

//   pictoUser.addEventListener('click', () => {
//     // Toggle Small Dropdown && bgDarkener
//     pictoImg.classList.toggle('picto_image_active');
//     smallNavContent.classList.toggle('small_dropdown_active');
//     // Activate bgDarkener
//     activateDarkener();
//   });
//   // Remove Small Dropdown && bgDarkener on body click
//   bgDarkener.addEventListener('click', () => {
//     pictoImg.classList.remove('picto_image_active');
//     smallNavContent.classList.remove('small_dropdown_active');
//     bgDarkener.style.display = 'none';
//   });
//   searchBtnSmall.addEventListener('click', () => {
//     pictoImg.classList.remove('picto_image_active');
//     smallNavContent.classList.remove('small_dropdown_active');
//     bgDarkener.style.display = 'none';
//   });
// }

// const searchSmall = () => {
//   const searchContent = document.querySelector('.sub_search_cont');
//   const searchSvg = document.querySelector('.search_svg');

//   searchBtnSmall.addEventListener('click', () => {
//     // Toggle Search && bgDarkener
//     searchSvg.classList.toggle('search_svg_active');
//     searchContent.classList.toggle('small_search_active');
//     // Activate bgDarkener
//     activateDarkener();
//   });
//   // Remove Search && bgDarkener on body click
//   bgDarkener.addEventListener('click', () => {
//     searchSvg.classList.remove('search_svg_active');
//     searchContent.classList.remove('small_search_active');
//     bgDarkener.style.display = 'none';
//   });
//   pictoUser.addEventListener('click', () => {
//     searchSvg.classList.remove('search_svg_active');
//     searchContent.classList.remove('small_search_active');
//     bgDarkener.style.display = 'none';
//   });
// }

// const navSlide = () => {
//   const burger = document.querySelector('.burger');
//   const nav = document.querySelector('.responsive-navbar_mobily');
//   const navLinks = document.querySelectorAll('.responsive-navbar_links_main')

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
//     activateDarkener();
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

// dropDownSmall();
// navSlide();
// searchSmall();
