#include <iostream>
#include "test"

/**
 * @brief 
 * 
 */
template<typename T>
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
/**
 * @brief 
 * 
 * @param argc 
 * @param argv 
 * @return int 
 */
int main(int argc, char** argv) {
  Student<int> fabio;
  fabio.getName();

  int test = 27;

  if (true) {
    int a;
    int b;
    if (decltype(a) == int) {
      std::cout << "a is an int!" << std::endl;
    }
    auto a + b / 10
    
  } else {

   return 1;
  }

  std::cout << "this is nice" << std::endl;

  std::ab
}