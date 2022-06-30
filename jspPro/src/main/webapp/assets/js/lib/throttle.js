function throttle(callback, delay) {
  let timer = null;

  return (e) => {
    if (timer) return;
    else
      timer = setTimeout(() => {
        callback(e);
        timer = null;
      }, delay);
  };
}
