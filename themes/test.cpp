#if !defined(OS)
#define OS_NOT_DEFINED
#endif

#include <iostream>

/*********************************************
* ...globalFunc...
*********************************************/
void globalFunc();

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
        void innerFunc();

        int var;
    };
}
struct FooPOD {
#ifdef OS_NOT_DEFINED
#define OS "unknown"
#endif
#define FooPOD_OS OS
    int i;
};
struct FooC {
private:
    int i;
};
extern int a;

static int innerFunc();

int a = innerFunc();

int innerFunc() const { return 5; }


int main() {
  foo::Foo foo_object;
  const foo::Foo foo_object_2;

  if(&foo_object != nullptr) {
     foo_object.getSelf();
  }

  return 0;
}