#include "../lib/unity/unity.h"

// Include the source file containing the functions you want to test
#include "../src/greet.h"

// Set up and tear down functions (optional)
void setUp(void) {
  // This function is called before each test
}

void tearDown(void) {
  // This function is called after each test
}

// Test cases
void test_example(void) { TEST_ASSERT_EQUAL_INT(0, 0); }
void greet_works(void) { TEST_ASSERT_EQUAL_STRING("Hello, world!\n", greet()); }

// Add more test cases as needed

// Entry point for running the tests
int main(void) {
  UNITY_BEGIN();

  // Run the test cases
  RUN_TEST(test_example);
  RUN_TEST(greet_works);
  // Add more RUN_TEST statements for additional test cases

  return UNITY_END();
}
