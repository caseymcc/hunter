#include <Wt/WApplication>

class TestApp: public WApplication
{
public:
    TestApp(const WEnvironment& env);

private:
};

TestApp::TestApp(const WEnvironment& env)
    : WApplication(env)
{
    setTitle("TestApp");
}

WApplication *createApplication(const WEnvironment& env)
{
    return new TestApp(env);
}

int main(int argc, char **argv)
{
    return Wt::WRun(argc, argv, &createApplication);
}