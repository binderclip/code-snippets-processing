int[][] config = {
  {1, 1},
  {1, 1},
  {2, 1 * 2},
  {1, 1 * 2},
  {4, 1 * 2},
  {3, 1 * 4},

  {1, 1},
  {1, 1},
  {2, 1 * 2},
  {1, 1 * 2},
  {5, 1 * 2},
  {4, 1 * 4},

  {1, 1},
  {1, 1},
  {8, 1 * 2},
  {6, 1 * 2},
  {4, 1 * 2},
  {3, 1 * 2},
  {2, 1 * 3},

  {7, 1},
  {7, 1},
  {6, 1 * 2},
  {4, 1 * 2},
  {5, 1 * 2},
  {4, 1 * 6},
};


void setup() {
  size(500, 500);
}

int tj = 0;
//int v_height = 5000;

void draw() {
    background(0);
    translate(0, tj);
    tj += 1;

    int j = height;
    int block_width = width / 10; 
    for (int i = 0; i < config.length; i++) {
      int block_height = 25 * config[i][1];
      j -= block_height;
      rect(block_width * config[i][0], j, block_width, block_height, 2);
    }
    for (int i = 0; i < config.length; i++) {
      int block_height = 25 * config[i][1];
      j -= block_height;
      rect(block_width * config[i][0], j, block_width, block_height, 2);
    }
    for (int i = 0; i < config.length; i++) {
      int block_height = 25 * config[i][1];
      j -= block_height;
      rect(block_width * config[i][0], j, block_width, block_height, 2);
    }
    for (int i = 0; i < config.length; i++) {
      int block_height = 25 * config[i][1];
      j -= block_height;
      rect(block_width * config[i][0], j, block_width, block_height, 2);
    }
    for (int i = 0; i < config.length; i++) {
      int block_height = 25 * config[i][1];
      j -= block_height;
      rect(block_width * config[i][0], j, block_width, block_height, 2);
    }

    delay(10);
}
