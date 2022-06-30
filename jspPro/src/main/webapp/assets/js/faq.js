const faqCategoryList = document.querySelector('.faq__categories');
const faqCategoryItems = document.querySelectorAll('.faq__category');
const faqLists = document.querySelectorAll('.faq__list');

new DragScroll({ list: faqCategoryList, items: faqCategoryItems, breakpoint: 768 });

const clickFAQCategoryList = (e) => {
  const categoryId = e.target.dataset.categoryId;
  if (categoryId && !e.cancelBubble) {
    // 카테고리 클래스 지정
    faqCategoryItems.forEach((item) => item.classList.remove('faq__category--active'));
    faqCategoryItems[categoryId].classList.add('faq__category--active');
    // 카테고리별 FAQ 활성화
    faqLists.forEach((list) => list.classList.remove('faq__list--active'));
    faqLists[categoryId].classList.add('faq__list--active');
  }
};

const clickFAQList = (e) => {
  e.target.closest('.faq__item').classList.toggle('faq__item--on');
};

faqCategoryList.addEventListener('click', clickFAQCategoryList);
faqLists.forEach((list) => list.addEventListener('click', clickFAQList));
