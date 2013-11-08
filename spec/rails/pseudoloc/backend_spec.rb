#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

describe Rails::Pseudoloc::Backend do
  subject { Rails::Pseudoloc::Backend.new(backend_mock) }
  let(:backend_mock) { double('backend') }

  it { should respond_to(:translate) }
end
