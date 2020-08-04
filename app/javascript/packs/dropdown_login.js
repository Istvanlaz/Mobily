import "bootstrap";

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

const dropDownLogin = () => {
  const loginDropdown = document.querySelector('.login_dropdown');
  const loginNavContent = document.querySelector('.login_nav_content');
  const exitBtn = document.querySelector('.exit_login_btn');
  const bgDarkener = document.querySelector('.sub_header_darkener');

  loginDropdown.addEventListener('click', () => {
    // console.log('heard you click there bruh!')
    // Toggle Login Dropdown
    loginNavContent.classList.toggle('login_dropdown_active');
    if (bgDarkener.style.display === "block") {
      bgDarkener.style.display = "none";
    } else {
      bgDarkener.style.display = "block";
    }
  });

  exitBtn.addEventListener('click', () => {
    loginNavContent.classList.remove('login_dropdown_active');
    bgDarkener.style.display = 'none';
  });
}

// dropDownLogin();
dropDownLogin();


