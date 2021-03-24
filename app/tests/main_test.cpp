#include "messages.h"
#include "gtest/gtest.h"

TEST(TestMessages, TestHello) {
    ASSERT_EQ(messages::hello(), "Hello, World!");
}

int main(int argc, char** argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

