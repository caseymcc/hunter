#include <Wt/WApplication>

class TestApp: public Wt::WApplication
{
public:
    TestApp(const Wt::WEnvironment& env);

private:
};

TestApp::TestApp(const Wt::WEnvironment& env)
    : Wt::WApplication(env)
{
    setTitle("TestApp");
}

Wt::WApplication *createApplication(const Wt::WEnvironment& env)
{
    return new TestApp(env);
}

int main(int argc, char **argv)
{
    return Wt::WRun(argc, argv, &createApplication);
}