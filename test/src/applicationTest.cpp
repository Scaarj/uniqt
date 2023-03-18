#include <gmock/gmock-matchers.h>
#include <gtest/gtest.h>

#include "uniqt/applicationCore.h"

using namespace testing;

// NOTE: test demo
TEST(applicationCore, setOrganizationDomain) {
    int argc = 0;
    char* argv[1] = {""};

    auto str = "org name";

    uniqt::ApplicationCore app(argc, argv);
    app.setOrganizationDomain(str);

    ASSERT_STREQ(app.organizationName().toStdString().c_str(), str);
}
