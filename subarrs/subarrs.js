function pyramid(n) {
  if (n === 0) return [];

  let arr = [];
  for (let i = 0; i < n; i++) { arr.push(1) }

  return pyramid(n - 1).concat([arr]);
}

// pyramid(0) => []
// pyramid(1) => [[1]]
// pyramid(2) => [[1], [1, 1]]
// pyramid(3) => [[1], [1, 1], [1, 1, 1]]

const result = pyramid(3);
console.log(result);