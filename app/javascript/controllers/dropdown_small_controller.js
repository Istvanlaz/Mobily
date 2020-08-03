const dropDownSmall = () => {
  const pictoUser = document.querySelector('.picto_user');
  const smallNavContent = document.querySelector('.small_nav_content');
  const bgDarkener = document.querySelector('.sub_header_darkener');
  const pictoImg = document.querySelector('.picto_user_img');
  pictoUser.addEventListener('click', () => {
    // Toggle Small Dropdown && bgDarkener
    pictoImg.classList.toggle('picto_image_active');
    smallNavContent.classList.toggle('small_dropdown_active');
    if (bgDarkener.style.display === "block") {
      bgDarkener.style.display = "none";
    } else {
      bgDarkener.style.display = "block";
    }
  });
  // Remove Small Dropdown && bgDarkener on body click
  bgDarkener.addEventListener('click', () => {
    pictoImg.classList.remove('picto_image_active');
    smallNavContent.classList.remove('small_dropdown_active');
    bgDarkener.style.display = 'none';
  });
}

dropDownSmall();
