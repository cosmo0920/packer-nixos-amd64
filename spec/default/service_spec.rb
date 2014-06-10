require 'spec_helper'

def check_enabled(service, target="multi-user.target")
  "systemctl --plain list-dependencies #{target} | grep '#{service}.service$'"
end

def check_running(service)
  "systemctl is-active #{service}.service"
end

describe command(check_enabled('sshd')) do
  it { should return_stdout /sshd/ }
end

describe command(check_running('sshd')) do
  it { should return_stdout "active" }
end
