# Requiring this file will import:
# * the Calabash Cucumber API,
# * the Calabash Cucumber predefined Steps,
# * and the Calabash::Formatters::Html cucumber formatter.
require "calabash-cucumber/cucumber"

# To use Calabash without the predefined Calabash Steps, uncomment these
# three lines and delete the require above.
# require "calabash-cucumber/wait_helpers"
# require "calabash-cucumber/operations"
# World(Calabash::Cucumber::Operations)
# RunLoop::CoreSimulator::DEFAULT_OPTIONS[:install_app_timeout] = 60
  DEFAULT_OPTIONS = {
    # In most cases 30 seconds is a reasonable amount of time to wait for an
    # install.  When testing larger apps, on slow machines, or in CI, this
    # value may need to be higher.  120 is the default for CI.
    :install_app_timeout => RunLoop::Environment.ci? ? 120 : 30,
    :uninstall_app_timeout => RunLoop::Environment.ci? ? 120 : 30,
    :launch_app_timeout => RunLoop::Environment.ci? ? 120 : 30,
    :wait_for_state_timeout => RunLoop::Environment.ci? ? 120 : 30
  }
RunLoop::Xcrun::DEFAULT_OPTIONS[:timeout] = 260
