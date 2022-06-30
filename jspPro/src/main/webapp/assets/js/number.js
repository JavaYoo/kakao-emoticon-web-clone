const inputNumber = document.querySelector('.number__input');
const btnRegistNumber = document.querySelector('.btn-regist-number');

const handleInputNumber = (e) => {
  if (e.target.value.length >= 15) btnRegistNumber.classList.add('btn-regist-number--active');
  else btnRegistNumber.classList.remove('btn-regist-number--active');
};
inputNumber.addEventListener('input', throttle(handleInputNumber, 300));
