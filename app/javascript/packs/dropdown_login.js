import "bootstrap";

const dropDownLogin = () => {
  const loginDropdown = document.querySelector('.login_dropdown');
  const loginNavContent = document.querySelector('.login_nav_content');
  const exitBtn = document.querySelector('.exit_login_btn');

  loginDropdown.addEventListener('click', () => {
    console.log('heard you click there bruh!')
    // Toggle Login Dropdown
    loginNavContent.classList.toggle('login_dropdown_active');
  });

  exitBtn.addEventListener('click', () => {
    loginNavContent.classList.remove('login_dropdown_active');
  });
}

// dropDownLogin();
dropDownLogin();


