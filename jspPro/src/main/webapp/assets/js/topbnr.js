const topbnr = document.querySelector('.topbnr');
const btnCloseTopbnr = document.querySelector('.btn-close-topbnr');
const displayTopbnr = localStorage.getItem('topbnr');

const closeTopbnr = () => {
  topbnr.classList.add('topbnr--hide');
  localStorage.setItem('topbnr', 'hide');
  document.documentElement.style.setProperty('--h-topbnr', '0px');
};

if (displayTopbnr === 'hide') {
  closeTopbnr();
} else {
  btnCloseTopbnr.addEventListener('click', closeTopbnr);
  document.documentElement.style.setProperty('--h-topbnr', '50px');
}
