const hotList = document.querySelector('.hot__list');

const makeDummyHotImg = () => {
  let dummyImgNumber = 11;

  return () => {
    const li = document.createElement('li');
    li.classList.add('hot__item');
    li.innerHTML = `<div class="hot__item-inner">
    <span class="hot__rank">${dummyImgNumber++}</span>
    <div class="hot__infos">
      <span class="hot__name">
        더미 이모티콘
      </span>
      <span class="hot__author">Dummy</span>
      <button class="btn-like" aria-label="좋아요">
        <span class="ico-common ico-like"></span>
      </button>
    </div>
    <img class="hot__default-image" data-src="https://via.placeholder.com/150" alt="더미 이모티콘" />
    <img class="hot__hover-image" data-src="https://via.placeholder.com/150" alt="더미 이모티콘 상세" />
  </div>`;

    return li;
  };
};
const dummyHotImgMaker = makeDummyHotImg();

let hotListIndex;
const sessionHotListIndex = parseInt(sessionStorage.getItem('hotListIndex'));

if (sessionHotListIndex) {
  // Maximun: 100
  if (sessionHotListIndex >= 90) hotListIndex = 90;
  else hotListIndex = sessionHotListIndex;

  for (let i = 1; i <= hotListIndex; i++) {
    hotList.appendChild(dummyHotImgMaker());
  }
} else {
  hotListIndex = 0;
}
const hotItems = document.querySelectorAll('.hot__item');

const hotIOCallback = (entries) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      const defaultImage = entry.target.querySelector('.hot__default-image');
      const hoverImage = entry.target.querySelector('.hot__hover-image');

      defaultImage.setAttribute('src', defaultImage.dataset.src);
      hoverImage.setAttribute('src', hoverImage.dataset.src);

      hotIO.unobserve(entry.target);

      if (entry.target === hotList.lastElementChild && hotListIndex < 90) {
        for (let i = 0; i < 10; i++) {
          const dummy = dummyHotImgMaker();
          hotIO.observe(dummy);
          hotList.appendChild(dummy);
        }
        hotListIndex += 10;
        sessionStorage.setItem('hotListIndex', hotListIndex);
      }
    }
  });
};
const hotIO = new IntersectionObserver(hotIOCallback);

hotItems.forEach((item) => {
  hotIO.observe(item);
});
