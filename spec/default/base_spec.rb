require 'spec_helper'

describe user('vagrant') do
  it { should exist }
  it { should have_login_shell '/run/current-system/sw/bin/bash' }
end
