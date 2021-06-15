function cellColor(cell) {
  const rows = "ABCDEFGH";

  rowIdx = parseInt(cell[1]) % 2 === 0;
  colIdx = rows.indexOf(cell[0]) % 2 === 0;

  return rowIdx === colIdx ? 'black' : 'white';
}

function chessBoardCellColor(cell1, cell2) {
  return cellColor(cell1) === cellColor(cell2);
}

function chessBoardCellColor(cell1, cell2) {
  return (parseInt(cell1[1]) % 2 === 0) === ("ABCDEFGH".indexOf(cell1[0]) % 2 === 0) === (parseInt(cell2[1]) % 2 === 0) === ("ABCDEFGH".indexOf(cell2[0]) % 2 === 0);
}

const result = chessBoardCellColor("A1","B2");
console.log(result);

const result = 'function';
console.log(result);

const result = 'function';
console.log(result);

const result = null;
console.log(result);