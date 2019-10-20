#if !defined(OS)
#define OS_NOT_DEFINED
#endif

#include <iostream>

/*********************************************
* ...globalFunc...
*********************************************/

// Free functions are blue
void globalFunc(){
    std::cout << "this is just a test" << std::endl;
};

namespace foo {
    /**
    ...Foo...
    */
    class Foo {
    public:

    // Member functions are green, such as classes
        Foo();

        ~Foo();

        virtual Foo* getSelf() { return this; }

    private:
        void innerFunc(int test) { std::cout << test << std::endl;};

        int var;
    };

    class Derived : public Foo {
        Foo foo_object;
        int test=1;

    };
}

// Templates purple to not oversee them
template<typename T>
T testTemplate(T arg1, T arg2) {
    T temp1;
    T temp2;

    temp1 = arg1 * 0.2;
    temp2 = arg2 / temp1;

    return arg1 + arg2;
}



template<typename T>
class templateClass{
public:
    templateClass(T arg1, T arg2) : member_variable_1(arg1), member_variable_2(arg_2) {}

    T getMember1(){ return member_variable_1; }
    T getMember2(){ return member_variable_2; }
    
private:
    T member_variable_1;
    T member_variable_2;
};


struct FooPOD {
#ifdef OS_NOT_DEFINED
#define OS "unknown"
#endif
#define FooPOD_OS OS
    int i;
};

struct FooC {
    int i;
};

extern int a = 1;

static int innerFunc();

int a = innerFunc();


int main() {
  foo::Foo foo_object;
  foo_object.getSelf();

  FooC foo_c;
  foo_c.i = 10;

  printf("%s", "test string");

  return 0;

}