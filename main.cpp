#include <iostream>
#include <tensorflow/c/c_api.h>

using namespace std;
int main(int argc, char **argv)
{
  cout << "Hello from TensorFlow C library version " << TF_Version() << endl;
  return 0;
}
