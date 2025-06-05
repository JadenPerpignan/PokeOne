# 🧬 PokeOne: The Ultimate C++ Pokédex

**PokeOne** is a command-line Pokédex application written in **C++20**, powered by **SQLite**, and designed to manage data for the original **151 Pokémon**. It features a dramatic ASCII header and a clean, menu-driven interface for full CRUD functionality.

## 🔥 Features

- Uses a local SQLite database (`pokemon.db`) with the following schema:
  ```sql
  CREATE TABLE pokemon (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT NOT NULL
  );
  ```
- Supports the following operations:
  - **Create**: Add a new Pokémon (ID, name, type)
  - **Read (Single)**: View a Pokémon by ID
  - **Read (All)**: List all Pokémon
  - **Update**: Modify a Pokémon’s name and/or type
  - **Delete**: Remove a Pokémon by ID
- Dramatic ASCII art header
- Organized codebase:
  - `main.cpp`: CLI logic
  - `DatabaseEngine.h/.cpp`: Database connection and query logic
  - `Pokemon.h/.cpp`: Pokémon model class
- Safe parameterized queries to prevent SQL injection
- Basic input validation

## 📁 Project Structure

```
PokedexProject/
├── CMakeLists.txt
├── main.cpp
├── DatabaseEngine.h
├── DatabaseEngine.cpp
├── Pokemon.h
├── Pokemon.cpp
├── init.sql
└── README.md
```

`init.sql` contains a `CREATE TABLE IF NOT EXISTS` statement followed by 151 `INSERT INTO pokemon` statements for Bulbasaur through Mew.

## 🔒 Prerequisites

- C++20-capable compiler (e.g., `g++ ≥ 10`, `clang++ ≥ 12`)
- SQLite3 library and development headers

### Install SQLite

- macOS:
  ```bash
  brew install sqlite3
  ```

- Ubuntu/Debian:
  ```bash
  sudo apt-get install sqlite3 libsqlite3-dev
  ```

- Windows:
  Use WSL or download precompiled SQLite binaries.

## ⚙️ Build Instructions

```bash
# Clone or navigate to the project directory
cd PokedexProject

# Create a build directory
mkdir -p build
cd build

# Generate build files and compile
cmake ..
cmake --build .
```

> This generates the `Pokedex` executable inside the `build/` directory.

## 🛠️ Database Initialization

```bash
cd build
sqlite3 pokemon.db < ../init.sql
```

To verify:
```bash
sqlite3 pokemon.db "SELECT COUNT(*) FROM pokemon;"
```
> Should print `151`

## 🕹️ Usage

```bash
./Pokedex
```

Menu options:
```
1. Add Pokémon
2. View Pokémon by ID
3. View All Pokémon
4. Update Pokémon
5. Delete Pokémon
0. Exit
```

Enter a number and follow prompts. Use `0` to quit.

## 🧩 Troubleshooting

If `No records found` appears:
- Ensure you're running `./Pokedex` from the `build/` directory where `pokemon.db` exists.

To reset and repopulate the database:
```bash
cd build
rm pokemon.db
sqlite3 pokemon.db < ../init.sql
```

## 🎉 Enjoy

Explore, extend, and evolve the world of Pokémon with **PokeOne — The Ultimate C++ Pokédex**.