#include "Pokemon.h"

Pokemon::Pokemon(int id, const std::string &name, const std::string &type)
    : id_(id), name_(name), type_(type) {}

int Pokemon::getId() const {
    return id_;
}

const std::string &Pokemon::getName() const {
    return name_;
}

const std::string &Pokemon::getType() const {
    return type_;
}

void Pokemon::setName(const std::string &newName) {
    name_ = newName;
}

void Pokemon::setType(const std::string &newType) {
    type_ = newType;
}