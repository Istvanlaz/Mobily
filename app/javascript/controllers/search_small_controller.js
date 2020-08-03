const searchSmall = () => {
  const appContainer = document.querySelector('.app-container');
  const searchBtnSmall = document.querySelector('.sub_header_search_btn');
  const searchContent = document.querySelectorAll('.sub_search_cont');
  const searchSvg = document.querySelector('.search_svg');
  searchBtnSmall.addEventListener('click', () => {
    // Toggle Nav
    searchContent.forEach((search) => {
    console.log('heard that click')
      search.classList.toggle('small_search_active');
      appContainer.classList.toggle('no_overflow_app_container');
      searchSvg.classList.toggle('search_svg_active');
    });
  });
  //  Close SearchBar on body click
  // appContainer.addEventListener('click', () => {
  //   searchContent.forEach((content) => {
  //     content.classList.remove('small_search_active');
  //   });
  // });
}

searchSmall();
