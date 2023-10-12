#include <gtest/gtest.h>

#include <auroraapp.h>

Q_DECL_EXPORT int main(int argc, char* argv[]) {
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
