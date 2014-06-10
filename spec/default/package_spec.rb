require 'spec_helper'

def check_installed(package, version=nil)
  if version
    cmd = "nix-store -q --references /var/run/current-system/sw | grep #{package}-#{version}"
  else
    cmd = "nix-store -q --references /var/run/current-system/sw | grep #{package}"
  end
  cmd
end

describe command(check_installed('gcc')) do
  it { should return_stdout /gcc/ }
end

describe command(check_installed('git')) do
  it { should return_stdout /git/ }
end

describe command(check_installed('gnumake')) do
  it { should return_stdout /gnumake/ }
end
