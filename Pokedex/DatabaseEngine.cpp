#include "DatabaseEngine.h"
#include <iostream>

DatabaseEngine::DatabaseEngine(const std::string &dbFile) : db_(nullptr) {
    if (sqlite3_open(dbFile.c_str(), &db_) != SQLITE_OK) {
        std::cerr << "Failed to open database: " << sqlite3_errmsg(db_) << "\n";
    } else {
        if (!prepareDatabase()) {
            std::cerr << "Failed to create or verify table.\n";
        }
    }
}

DatabaseEngine::~DatabaseEngine() {
    if (db_) sqlite3_close(db_);
}

bool DatabaseEngine::prepareDatabase() {
    const char *createTableSQL =
        "CREATE TABLE IF NOT EXISTS pokemon ("
        "id INTEGER PRIMARY KEY, "
        "name TEXT NOT NULL, "
        "type TEXT NOT NULL"
        ");";
    return executeNonQuery(createTableSQL);
}

bool DatabaseEngine::executeNonQuery(const std::string &sql) {
    char *errMsg = nullptr;
    int rc = sqlite3_exec(db_, sql.c_str(), nullptr, nullptr, &errMsg);
    if (rc != SQLITE_OK) {
        std::cerr << "SQL error: " << (errMsg ? errMsg : "unknown") << "\n";
        sqlite3_free(errMsg);
        return false;
    }
    return true;
}

bool DatabaseEngine::addPokemon(const Pokemon &p) {
    const char *sql = "INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?);";
    sqlite3_stmt *stmt = nullptr;
    if (sqlite3_prepare_v2(db_, sql, -1, &stmt, nullptr) != SQLITE_OK) {
        std::cerr << "Failed to prepare INSERT statement.\n";
        return false;
    }
    sqlite3_bind_int(stmt, 1, p.getId());
    sqlite3_bind_text(stmt, 2, p.getName().c_str(), -1, SQLITE_TRANSIENT);
    sqlite3_bind_text(stmt, 3, p.getType().c_str(), -1, SQLITE_TRANSIENT);

    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    if (rc != SQLITE_DONE) {
        std::cerr << "Failed to execute INSERT (maybe duplicate id?).\n";
        return false;
    }
    return true;
}

std::optional<Pokemon> DatabaseEngine::getPokemon(int id) {
    const char *sql = "SELECT id, name, type FROM pokemon WHERE id = ?;";
    sqlite3_stmt *stmt = nullptr;
    if (sqlite3_prepare_v2(db_, sql, -1, &stmt, nullptr) != SQLITE_OK) {
        std::cerr << "Failed to prepare SELECT statement.\n";
        return std::nullopt;
    }
    sqlite3_bind_int(stmt, 1, id);

    int rc = sqlite3_step(stmt);
    if (rc == SQLITE_ROW) {
        int pid = sqlite3_column_int(stmt, 0);
        std::string name = reinterpret_cast<const char *>(sqlite3_column_text(stmt, 1));
        std::string type = reinterpret_cast<const char *>(sqlite3_column_text(stmt, 2));
        sqlite3_finalize(stmt);
        return Pokemon(pid, name, type);
    }
    sqlite3_finalize(stmt);
    return std::nullopt;
}

std::vector<Pokemon> DatabaseEngine::getAllPokemon() {
    const char *sql = "SELECT id, name, type FROM pokemon ORDER BY id;";
    sqlite3_stmt *stmt = nullptr;
    std::vector<Pokemon> list;
    if (sqlite3_prepare_v2(db_, sql, -1, &stmt, nullptr) != SQLITE_OK) {
        std::cerr << "Failed to prepare SELECT ALL statement.\n";
        return list;
    }
    while (sqlite3_step(stmt) == SQLITE_ROW) {
        int pid = sqlite3_column_int(stmt, 0);
        std::string name = reinterpret_cast<const char *>(sqlite3_column_text(stmt, 1));
        std::string type = reinterpret_cast<const char *>(sqlite3_column_text(stmt, 2));
        list.emplace_back(pid, name, type);
    }
    sqlite3_finalize(stmt);
    return list;
}

bool DatabaseEngine::updatePokemon(const Pokemon &p) {
    const char *sql = "UPDATE pokemon SET name = ?, type = ? WHERE id = ?;";
    sqlite3_stmt *stmt = nullptr;
    if (sqlite3_prepare_v2(db_, sql, -1, &stmt, nullptr) != SQLITE_OK) {
        std::cerr << "Failed to prepare UPDATE statement.\n";
        return false;
    }
    sqlite3_bind_text(stmt, 1, p.getName().c_str(), -1, SQLITE_TRANSIENT);
    sqlite3_bind_text(stmt, 2, p.getType().c_str(), -1, SQLITE_TRANSIENT);
    sqlite3_bind_int(stmt, 3, p.getId());

    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    if (rc != SQLITE_DONE) {
        std::cerr << "Failed to execute UPDATE.\n";
        return false;
    }
    return true;
}

bool DatabaseEngine::deletePokemon(int id) {
    const char *sql = "DELETE FROM pokemon WHERE id = ?;";
    sqlite3_stmt *stmt = nullptr;
    if (sqlite3_prepare_v2(db_, sql, -1, &stmt, nullptr) != SQLITE_OK) {
        std::cerr << "Failed to prepare DELETE statement.\n";
        return false;
    }
    sqlite3_bind_int(stmt, 1, id);

    int rc = sqlite3_step(stmt);
    sqlite3_finalize(stmt);
    if (rc != SQLITE_DONE) {
        std::cerr << "Failed to execute DELETE.\n";
        return false;
    }
    return true;
}