// const appContainer = document.querySelector('.app-container');
const track = document.querySelector('.slider_items');
const slides = Array.from(track.children);
const nextButton = document.querySelector('.nextBtn');
const prevButton = document.querySelector('.prevBtn');
const dotsNav = document.querySelector('.slider_position_cont');
const dots = Array.from(dotsNav.children);

// const slideWidth = slides[0].getBoundingClientRect().width;
// const appContainerWidth = appContainer.getBoundingClientRect().width;
// const percentWidth = slideWidth / appContainerWidth * 100;

// console.log(slideWidth);
// console.log(appContainerWidth);
// console.log(percentWidth);

// // arrange the slides next to each other
// slides[0].style.left = percentWidth*0 + 'px';
// slides[1].style.left = percentWidth*1 + 'px';
// slides[2].style.left = percentWidth*2 + 'px';


const setSlidePosition = (slide, index) => {
//   slide.style.left = percentWidth * index + '%';
  slide.style.left = 101 * index + '%';
};
slides.forEach(setSlidePosition);


const moveToSlide = (track, currentSlide, targetSlide) => {
  track.style.transform = 'translateX(-' + targetSlide.style.left + ')';
  currentSlide.classList.remove('current_slide');
  targetSlide.classList.add('current_slide');
};


const updateDots = (currentDot, targetDot) => {
  currentDot.classList.remove('current_slide');
  targetDot.classList.add('current_slide');
};


const hideShowArrows = (slides, prevButton, nextButton, targetIndex) => {
  if (targetIndex === 0) {
    nextButton.classList.remove('is_hidden');
    prevButton.classList.add('is_hidden');
  } else if (targetIndex === slides.length -1) {
    prevButton.classList.remove('is_hidden');
    nextButton.classList.add('is_hidden');
  } else {
    prevButton.classList.remove('is_hidden');
    nextButton.classList.remove('is_hidden');
  }
};


// // moves slide to right on click
nextButton.addEventListener('click', () => {
  const currentSlide = track.querySelector('.current_slide');
  const nextSlide = currentSlide.nextElementSibling;
  const currentDot = dotsNav.querySelector('.current_slide');
  const nextDot = currentDot.nextElementSibling;
  const nextIndex = slides.findIndex(slide => slide === nextSlide);

  moveToSlide(track, currentSlide, nextSlide);
  updateDots(currentDot, nextDot);
  hideShowArrows(slides, prevButton, nextButton, nextIndex);
});


// // moves slide to left on click
prevButton.addEventListener('click', () => {
  const currentSlide = track.querySelector('.current_slide');
  const prevSlide = currentSlide.previousElementSibling;
  const currentDot = dotsNav.querySelector('.current_slide');
  const prevDot = currentDot.previousElementSibling;
  const prevIndex = slides.findIndex(slide => slide === prevSlide);

  moveToSlide(track, currentSlide, prevSlide);
  updateDots(currentDot, prevDot);
  hideShowArrows(slides, prevButton, nextButton, prevIndex);
});


// // moves to the correct indicator when clicked
dotsNav.addEventListener('click', e => {
  // what indicator is clicked on
  const targetDot = e.target.closest('button');

  if (!targetDot) return;

  const currentSlide = track.querySelector('.current_slide');
  const currentDot = dotsNav.querySelector('.current_slide');
  const targetIndex = dots.findIndex(dot => dot === targetDot);
  const targetSlide = slides[targetIndex];

  moveToSlide(track, currentSlide, targetSlide);
  updateDots(currentDot, targetDot);

  hideShowArrows(slides, prevButton, nextButton, targetIndex);
})
