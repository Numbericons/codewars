# Start at top left corner of arrays
# Push element into return array
# Iterate through current inner array(move right)
# Iterate through the last elemtn of each inner array(move down)
# Move left one element
# move up until hit previously processed element(track start / end)
# move left until beginning of array
# move down one, move right one
# move down 1, move left 1

# hit edge going down, move 1 left and go up
# hit edge going left, move 1 down, go right
# hit edge going up, go left
# hit edge going right, go down

map = {
  right: {
    adjust: [0, 0],
    nextDir: "down",
    size: [0, -1]
  },
  down: {
    adjust: [-1, 0],
    nextDir: "left",
    size: [-1, 0]
  },
  left: {
    adjust: [0, -1],
    nextDir: "down",
    size: [0, -1]
  },
  up: {
    adjust: [0, 0],
    nextDir: "left",
    size: [-1, 0]
  }
}

def corner_fill(array)
dir = "right"
height = array[0].length
width = height
total = height * height
retArr = [];
pos = [0, 0]

while (total > 0) {
  retArr.push(array[pos[0]][pos[1]])
  total -= 1
  if (dir === "right") {
    while (array[pos[0] + 1][pos[1]]) {
      pos = [pos[0] + 1, pos[1]]
      retArr.push(array[pos[0]][pos[1]])
      total -= 1
    }
  } elsif(dir === "down") {
    while (array[pos[0]][pos[1] + 1]) {
      pos = [pos[0], pos[1] + 1]
      retArr.push(array[pos[0]][pos[1]])
      total -= 1
    }
  } elsif(dir === "left") {
    while (array[pos[0] - 1][pos[1]]) {
      pos = [pos[0] - 1, pos[1]]
      retArr.push(array[pos[0]][pos[1]])
      total -= 1
    }
  } elsif(dir === "up") {
    while (array[pos[0]][pos[1] - 1]) {
      pos = [pos[0], pos[1] - 1]
      retArr.push(array[pos[0]][pos[1]])
      total -= 1
    }
  }

  mapped = map[dir]
  pos[0] = pos[0] + mapped[adjust[0]]
  pos[1] = pos[1] + mapped[adjust[1]]

  width = width + mapped[size[0]]
  height = height + mapped[size[1]]

  dir = mapped[nextDir]
}

return retArr;
end