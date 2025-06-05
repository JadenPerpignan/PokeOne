#ifndef DATABASE_ENGINE_H
#define DATABASE_ENGINE_H

#include <sqlite3.h>
#include <vector>
#include <optional>
#include "Pokemon.h"

class DatabaseEngine {
public:
    DatabaseEngine(const std::string &dbFile = "pokemon.db");
    ~DatabaseEngine();

    bool addPokemon(const Pokemon &p);
    std::optional<Pokemon> getPokemon(int id);
    std::vector<Pokemon> getAllPokemon();
    bool updatePokemon(const Pokemon &p);
    bool deletePokemon(int id);

private:
    sqlite3 *db_;

    bool executeNonQuery(const std::string &sql);
    bool prepareDatabase();
};

#endif // DATABASE_ENGINE_H
