#if !defined(OS)
#define OS_NOT_DEFINED
#endif

#include <iostream>

/*********************************************
* ...globalFunc...
*********************************************/
void globalFunc(){
    std::cout << "this is just a test" << std::endl;
};

namespace foo {
    /**
    ...Foo...
    */
    class Foo {
    public:
        Foo();

        ~Foo();

        virtual Foo* getSelf() { return Foo::getSelf(); }

    private:
        void innerFunc(int test) { std::cout << test << std::endl;};

        int var;
    };


    class Derived : public Foo {
        Foo foo_object;
        int test=1;

    };
}

template<typename T>
T testTemplate(T arg1, T arg2) {
    return arg1 + arg2;
}


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

extern int a;

static int innerFunc();

int a = innerFunc();


int main() {
  foo::Foo foo_object;
  foo_object.getSelf();

  printf("%s", "test string");

  return 0;

}