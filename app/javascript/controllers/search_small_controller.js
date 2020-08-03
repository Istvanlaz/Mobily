const searchSmall = () => {
  const searchBtnSmall = document.querySelector('.sub_header_search_btn');
  const searchContent = document.querySelector('.sub_search_cont');
  const bgDarkener = document.querySelector('.sub_header_darkener');
  const searchSvg = document.querySelector('.search_svg');
  searchBtnSmall.addEventListener('click', () => {
    // Toggle Search && bgDarkener
    searchSvg.classList.toggle('search_svg_active');
    searchContent.classList.toggle('small_search_active');
    if (bgDarkener.style.display === "block") {
      bgDarkener.style.display = "none";
    } else {
      bgDarkener.style.display = "block";
    }
  });
  // Remove Search && bgDarkener on body click
  bgDarkener.addEventListener('click', () => {
    searchSvg.classList.remove('search_svg_active');
    searchContent.classList.remove('small_search_active');
    bgDarkener.style.display = 'none';
  });
}

searchSmall();
