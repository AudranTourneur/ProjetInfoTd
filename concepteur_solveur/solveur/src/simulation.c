#include "fonctions.h"
#include "TerminalUtils.h"
#include "simulation.h"

#define ARRAYSIZE 256

typedef struct Position {
    int x;
    int y;
} Position;

typedef struct Enemy {
    char name;
    int index;
    int hp;
    int property;  // 0 = none | 1 = fire | 2 =  ice
    Position currentPosition;
    Position lastPosition;
    bool spawned;
} Enemy;

typedef struct SimulationData {
    bool isFinished;
    int gameTick;
    int enemiesLeft;
    //Queue* enemiesRemainingToSpawn;
    Enemy enemies[ARRAYSIZE];
    char grid[GridSize][GridSize];
} SimulationData;

Position getNextAvailablePosition(char grid[GridSize][GridSize], Position currentPosition, Position lastPosition) {
    for (int i = currentPosition.x-1; i<=currentPosition.x+1;i++){
        for (int j = currentPosition.y-1; i<=currentPosition.y+1;i++){
            if (grid[i][j] == grid[currentPosition.x][currentPosition.y] || grid[i][j] == grid[lastPosition.x][lastPosition.y] || (i != currentPosition.x && j != currentPosition.y)) // Check for currentPosition or previous position or corners
            {
                continue;
            }
            if (grid[i][j] == PATH)
            {
                Position newPosition;
                newPosition.x= i;
                newPosition.y = j;
                return newPosition;
            }
        }
    }
}

Position spawn = {0, 1};
Position end = {13, 12};


int enemyNameToHp(char name) {
    switch (name) {
        case 'w':
            return 3;
        case 'n':
            return 5;
        case 't':
            return 15;
        default:
            return 1;

    }
}

void initializeEnemies(SimulationData *sim, const char waveEnemies[ARRAYSIZE]) {
    int index = 0;
    while (waveEnemies[index] != 0) {
        sim->enemies[index].spawned = false;
        sim->enemies[index].index = index + 1;
        sim->enemies[index].name = waveEnemies[index];
        sim->enemies[index].hp = enemyNameToHp(sim->enemies[index].name);
        sim->enemiesLeft++;
        index++;
    }
}

void moveEnemy( SimulationData *sim, Enemy* enemy) {
    Position currentPosition = enemy->currentPosition;
    Position newPosition = getNextAvailablePosition(sim->grid,enemy->currentPosition,enemy->lastPosition);
    enemy->lastPosition=currentPosition;
    enemy->currentPosition= newPosition;
}

void updateSimulation(SimulationData* simulationData) {

    // Spawning enemies
    if (simulationData->gameTick % 2 == 0 && simulationData->enemiesLeft > 0 ){
        for (int i = 0; i < ARRAYSIZE; ++i) {
            Enemy enemy = simulationData->enemies[i];
            if (enemy.name != 0) {
                simulationData->enemies[i].currentPosition = spawn;
                simulationData->enemies[i].spawned = true;
                simulationData->enemiesLeft--;
                break;
            }
        }
    }

    // Main loop
    int index=0;
    while (simulationData->enemies[index].spawned==true){
        if ( simulationData->enemies[index].hp!= 0) {
            moveEnemy(simulationData, &simulationData->enemies[index]);
        }
        index++;
    }
    Wait(100);
    simulationData->gameTick++;
}

void drawSimulation(SimulationData *simulationData) {

    for (int i = 0; i < GridSize; i++) {
        for (int j = 0; j < GridSize; j++) {
            Draw(j+1, i+1, simulationData->grid[j][i]);
        }
        char line[6];
        sprintf(line, "L%d", i);
        Write(20, i, line);
    }
    char str[32] = "a";
    sprintf(str, "Game Tick %d", simulationData->gameTick);
    Write(0, 14, str);

    for (int i = 0; i < ARRAYSIZE; ++i) {
        Enemy enemy = simulationData->enemies[i];
        if (enemy.name == 0) break;
        if (enemy.name != 0) {
            Draw(enemy.currentPosition.x, enemy.currentPosition.y+1, enemy.name);
        }
    }
    Refresh();
    Wait(1000);

    //End();
}

// Returns true if the simulation is successful, false otherwise
bool simulate(char grid[GridSize][GridSize], Wave wave) {
    SimulationData sim = {false, 0};
    for (int i = 0; i < GridSize; ++i)
        for (int j = 0; j < GridSize; ++j)
            sim.grid[i][j] = grid[i][j];
    initializeEnemies(&sim, wave.enemies);
    puts("hi");
    Init();
    while (!sim.isFinished) {
        updateSimulation(&sim);
        drawSimulation(&sim);
    }
    End();
    return false;
}