$('.home__banners').slick({ autoplay: true, dots: true, prevArrow: false, nextArrow: false });

const newtabList = document.querySelector('.home__list-newtab');
const newtabItems = document.querySelectorAll('.home__item-newtab');
new DragScroll({ list: newtabList, items: newtabItems, breakpoint: 768 });

const styletabLists = document.querySelectorAll('.home__styles');
styletabLists.forEach((list) => {
  new DragScroll({
    list,
    items: list.querySelectorAll('.home__style'),
    breakpoint: 768,
  });
});
