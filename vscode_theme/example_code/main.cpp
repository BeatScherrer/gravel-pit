#include <iostream>

/**
 * @brief 
 * 
 */
class Student {

public:
Student() {}

/**
 * @brief Get the Name object
 * 
 * @return std::string 
 */
std::string getName() {return this->name_;}

private:
std::string name_;

};

// this is a comment
int main(int argc, char** argv) {
  Student fabio;
  fabio.getName();
}