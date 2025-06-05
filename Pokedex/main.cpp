#include <iostream>
#include <limits>
#include "DatabaseEngine.h"
#include "Pokemon.h"

// Simple function to print dramatic ASCII "PokeOne" and caption
void printHeader() {
    std::cout << R"(
  ____    ___    _  __   _____    ___    _   _   _____
 |  _ \  / _ \  | |/ /  | ____|  / _ \  | \ | | | ____|
 | |_) || | | || ' /   |  _|   | | | | |  \| | |  _|
 |  __/ | |_| ||  <    | |___  | |_| | | |\  | | |___
 |_|     \___/ |_|\_\  |_____|  \___/  |_| \_| |_____|
    ===============================================
     The Ultimate C++ Pokédex
    ===============================================
)" << "\n";
}

int getIntInput() {
    int value;
    while (!(std::cin >> value)) {
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        std::cout << "Please enter a valid number: ";
    }
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
    return value;
}

std::string getStringInput(const std::string &prompt) {
    std::string input;
    std::cout << prompt;
    std::getline(std::cin, input);
    return input;
}

int main() {
    DatabaseEngine db;
    int choice = 0;

    do {
        printHeader();
        std::cout << "1. Add Pokémon\n";
        std::cout << "2. View Pokémon by ID\n";
        std::cout << "3. View All Pokémon\n";
        std::cout << "4. Update Pokémon\n";
        std::cout << "5. Delete Pokémon\n";
        std::cout << "0. Exit\n";
        std::cout << "Select an option: ";
        choice = getIntInput();

        switch (choice) {
            case 1: {
                int id = getIntInput();
                std::string name = getStringInput("Enter name: ");
                std::string type = getStringInput("Enter type: ");
                Pokemon p(id, name, type);
                if (db.addPokemon(p)) {
                    std::cout << "Added successfully.\n";
                } else {
                    std::cout << "Failed to add. (ID might exist)\n";
                }
                break;
            }
            case 2: {
                int id = getIntInput();
                auto result = db.getPokemon(id);
                if (result) {
                    std::cout << "ID: " << result->getId()
                              << " | Name: " << result->getName()
                              << " | Type: " << result->getType() << "\n";
                } else {
                    std::cout << "No Pokémon with ID " << id << ".\n";
                }
                break;
            }
            case 3: {
                auto all = db.getAllPokemon();
                if (all.empty()) {
                    std::cout << "No records found.\n";
                } else {
                    for (const auto &p : all) {
                        std::cout << "ID: " << p.getId()
                                  << " | Name: " << p.getName()
                                  << " | Type: " << p.getType() << "\n";
                    }
                }
                break;
            }
            case 4: {
                int id = getIntInput();
                auto existing = db.getPokemon(id);
                if (!existing) {
                    std::cout << "No Pokémon with ID " << id << ".\n";
                    break;
                }
                std::string name = getStringInput("Enter new name: ");
                std::string type = getStringInput("Enter new type: ");
                Pokemon p(id, name, type);
                if (db.updatePokemon(p)) {
                    std::cout << "Updated successfully.\n";
                } else {
                    std::cout << "Failed to update.\n";
                }
                break;
            }
            case 5: {
                int id = getIntInput();
                if (db.deletePokemon(id)) {
                    std::cout << "Deleted successfully.\n";
                } else {
                    std::cout << "Failed to delete (maybe ID doesn't exist).\n";
                }
                break;
            }
            case 0:
                std::cout << "Goodbye!\n";
                break;
            default:
                std::cout << "Invalid option. Try again.\n";
        }

        if (choice != 0) {
            std::cout << "Press Enter to continue...";
            std::cin.get();
        }
    } while (choice != 0);

    return 0;
}