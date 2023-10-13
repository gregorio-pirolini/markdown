let myFunftion = (dez) => {
  let val = "";
  let rest;
  do {
    rest = dez % 2;
    dez = Math.floor(dez / 2);
    val = rest + val;
  } while (dez > 0);
  console.log(val);
};

// myFunftion(7)
myFunftion(11);
