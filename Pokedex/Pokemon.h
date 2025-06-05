#ifndef POKEMON_H
#define POKEMON_H

#include <string>

class Pokemon {
public:
    Pokemon(int id, const std::string &name, const std::string &type);
    int getId() const;
    const std::string &getName() const;
    const std::string &getType() const;
    void setName(const std::string &newName);
    void setType(const std::string &newType);

private:
    int id_;
    std::string name_;
    std::string type_;
};

#endif // POKEMON_H