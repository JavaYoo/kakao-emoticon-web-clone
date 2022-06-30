const newInnerHTML = `
<li class="new__item">
  <div class="new__info">
    <span class="new__name">좋아! 춘배와 나비</span>
    <span class="new__author">올소</span>
    <button class="btn-like" aria-label="좋아요">
      <span class="ico-common ico-like"></span>
    </button>
  </div>
  <ul class="new__images">
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2f8f324a0b9c48f77dbce3a43bd11ce785" alt="좋아! 춘배와 나비" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2f15b3f4e3c2033bfd702a321ec6eda72c" alt="좋아! 춘배와 나비 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2ff604e7b0e6900f9ac53a43965300eb9a" alt="좋아! 춘배와 나비" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2f4022de826f725e10df604bf1b9725cfd" alt="좋아! 춘배와 나비 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2f9f5287469802eca457586a25a096fd31" alt="좋아! 춘배와 나비" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2f8b566dca82634c93f811198148a26065" alt="좋아! 춘배와 나비 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2f9f17e489affba0627eb1eb39695f93dd" alt="좋아! 춘배와 나비" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/13a5964eb0626356031086d1b385fe2f82f3bd8c9735553d03f6f982e10ebe70" alt="좋아! 춘배와 나비 상세" />
    </li>
  </ul>
</li>
<li class="new__item">
  <div class="new__info">
    <span class="new__name">뽀쨔뽀쨔한 아기토끼 뭉지</span>
    <span class="new__author">밤미</span>
    <button class="btn-like" aria-label="좋아요">
      <span class="ico-common ico-like"></span>
    </button>
  </div>
  <ul class="new__images">
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac748f324a0b9c48f77dbce3a43bd11ce785" alt="뽀쨔뽀쨔한 아기토끼 뭉지" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac7415b3f4e3c2033bfd702a321ec6eda72c" alt="뽀쨔뽀쨔한 아기토끼 뭉지 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac74f604e7b0e6900f9ac53a43965300eb9a" alt="뽀쨔뽀쨔한 아기토끼 뭉지" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac744022de826f725e10df604bf1b9725cfd" alt="뽀쨔뽀쨔한 아기토끼 뭉지 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac749f5287469802eca457586a25a096fd31" alt="뽀쨔뽀쨔한 아기토끼 뭉지" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac748b566dca82634c93f811198148a26065" alt="뽀쨔뽀쨔한 아기토끼 뭉지 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac749f17e489affba0627eb1eb39695f93dd" alt="뽀쨔뽀쨔한 아기토끼 뭉지" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/88b27dae85a4c8afb2d00dbba5edac7482f3bd8c9735553d03f6f982e10ebe70" alt="뽀쨔뽀쨔한 아기토끼 뭉지 상세" />
    </li>
  </ul>
</li>
<li class="new__item">
  <div class="new__info">
    <span class="new__name">예뻐라와 이뻐라의 따뜻한 겨울이야기</span>
    <span class="new__author">샐비어</span>
    <button class="btn-like" aria-label="좋아요">
      <span class="ico-common ico-like"></span>
    </button>
  </div>
  <ul class="new__images">
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f678f324a0b9c48f77dbce3a43bd11ce785" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f6715b3f4e3c2033bfd702a321ec6eda72c" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f67f604e7b0e6900f9ac53a43965300eb9a" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f674022de826f725e10df604bf1b9725cfd" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f679f5287469802eca457586a25a096fd31" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f678b566dca82634c93f811198148a26065" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f679f17e489affba0627eb1eb39695f93dd" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/ef0c230a7a49ad90b5ac105ac75f9f6782f3bd8c9735553d03f6f982e10ebe70" alt="예뻐라와 이뻐라의 따뜻한 겨울이야기 상세" />
    </li>
  </ul>
</li>
<li class="new__item">
  <div class="new__info">
    <span class="new__name">병알병알병알</span>
    <span class="new__author">마리프</span>
    <button class="btn-like" aria-label="좋아요">
      <span class="ico-common ico-like"></span>
    </button>
  </div>
  <ul class="new__images">
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e98f324a0b9c48f77dbce3a43bd11ce785" alt="병알병알병알" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e915b3f4e3c2033bfd702a321ec6eda72c" alt="병알병알병알 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e9f604e7b0e6900f9ac53a43965300eb9a" alt="병알병알병알" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e94022de826f725e10df604bf1b9725cfd" alt="병알병알병알 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e99f5287469802eca457586a25a096fd31" alt="병알병알병알" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e98b566dca82634c93f811198148a26065" alt="병알병알병알 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e99f17e489affba0627eb1eb39695f93dd" alt="병알병알병알" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/03b3c3b2262acbf95f2378bb6458e8e982f3bd8c9735553d03f6f982e10ebe70" alt="병알병알병알 상세" />
    </li>
  </ul>
</li>
<li class="new__item">
  <div class="new__info">
    <span class="new__name">토끼소녀는 댜기뿐이야!</span>
    <span class="new__author">위콩</span>
    <button class="btn-like" aria-label="좋아요">
      <span class="ico-common ico-like"></span>
    </button>
  </div>
  <ul class="new__images">
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac428f324a0b9c48f77dbce3a43bd11ce785" alt="토끼소녀는 댜기뿐이야!" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac4215b3f4e3c2033bfd702a321ec6eda72c" alt="토끼소녀는 댜기뿐이야! 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac42f604e7b0e6900f9ac53a43965300eb9a" alt="토끼소녀는 댜기뿐이야!" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac424022de826f725e10df604bf1b9725cfd" alt="토끼소녀는 댜기뿐이야! 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac429f5287469802eca457586a25a096fd31" alt="토끼소녀는 댜기뿐이야!" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac428b566dca82634c93f811198148a26065" alt="토끼소녀는 댜기뿐이야! 상세" />
    </li>
    <li class="new__image">
      <img class="new__image-default" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac429f17e489affba0627eb1eb39695f93dd" alt="토끼소녀는 댜기뿐이야!" />
      <img class="new__image-hover" src="https://item.kakaocdn.net/do/fae203cb8512acb1e5f79c8ac40cac4282f3bd8c9735553d03f6f982e10ebe70" alt="토끼소녀는 댜기뿐이야! 상세" />
    </li>
  </ul>
</li>
`;
const newList = document.querySelector('.new__list');
let newListIndex;
const newMaximunCnt = 20;

const sessionNewListIndex = sessionStorage.getItem('newListIndex');
if (sessionNewListIndex) {
  if (sessionNewListIndex >= newMaximunCnt) newListIndex = newMaximunCnt;
  else newListIndex = sessionNewListIndex;

  for (let i = 1; i < newListIndex; i++) {
    newList.innerHTML += newInnerHTML;
  }
} else {
  newListIndex = 1;
}

const newLastItem = newList.lastElementChild;

const ioNewCallback = (entries) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      ioNew.unobserve(entry.target);
      if (newListIndex < newMaximunCnt) {
        sessionStorage.setItem('newListIndex', ++newListIndex);
        newList.innerHTML += newInnerHTML;
        const newLastItem = newList.lastElementChild;
        ioNew.observe(newLastItem);
      }
    }
  });
};

const ioNew = new IntersectionObserver(ioNewCallback);
ioNew.observe(newLastItem);
