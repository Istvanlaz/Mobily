const showCarrousselController = () => {
  const carroussel = document.querySelector('.product_show_carroussel');

  if (carroussel === null) {
    return;
  } else {
    const pictures = Array.from(carroussel.children);
    const carrousselNav = document.querySelector('.product_show_nav');
    const carroussePics = Array.from(carrousselNav.children);

    const darkener = document.querySelector('.show_img_darkener');
    // const carrousselImage = document.querySelector('.show_img_carroussel');


    const updateCarrousselNav = (currentNav, targetNav) => {
      currentNav.classList.remove('active_img_show_small');
      targetNav.classList.add('active_img_show_small');
    };

    const showRelatedImage = (currentImage, targetImage) => {
      currentImage.classList.remove('show_carroussel_active');
      targetImage.classList.add('show_carroussel_active');
    };

    // // moves to the correct indicator when clicked
    carrousselNav.addEventListener('click', e => {
      // what indicator is clicked on
      const targetPic = e.target.closest('li');

      if (!targetPic) return;

      const currentNav = carrousselNav.querySelector('.active_img_show_small');
      const currentImage = carroussel.querySelector('.show_carroussel_active');

      const targetIndex = carroussePics.findIndex(pic => pic === targetPic);

      const targetNav = carroussePics[targetIndex];
      const targetImage = pictures[targetIndex];
      // console.log(targetIndex);

      updateCarrousselNav(currentNav, targetNav);
      showRelatedImage(currentImage, targetImage);
    });

    const setDarkener = () => {
      if (darkener.style.display === "block") {
        return;
      } else {
        darkener.style.display = "block";
      }
    };

    const unsetDarkener = () => {
      if (darkener.style.display === "" || darkener.style.display === "none") {
        return;
      } else {
        darkener.style.display = "none";
      }
    };

    const setImageBig = (targetShow) =>{

      if (targetShow.classList.contains('big_img_carroussel')) {
        return;
      } else {
        targetShow.classList.remove('show_img_carroussel');
        targetShow.classList.add('big_img_carroussel');
      }
    };

    const unsetImageBig = (targetShow) =>{
      if (targetShow.classList.contains('show_img_carroussel')) {
        return;
      } else {
        targetShow.classList.remove('big_img_carroussel');
        targetShow.classList.add('show_img_carroussel');
      }
    };

    carroussel.addEventListener('click', e => {
      const targetShow = e.target.closest('li');

      if (!targetShow) return;

      const targetView = pictures.findIndex(view => view === targetShow);

      if (targetShow.classList.contains('show_img_carroussel')) {
        setImageBig(targetShow);
        setDarkener();
      } else {
        unsetImageBig(targetShow);
        unsetDarkener();
      }
    });
  }

};

showCarrousselController();



