const list = document.querySelector('.mypage__menus');
const items = document.querySelectorAll('.mypage__menu');

new DragScroll({ list, items, breakpoint: 768 });
