#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

require 'spec_helper'

describe Rails::Pseudoloc do
  it 'should have a version number' do
    Rails::Pseudoloc::VERSION.should_not be_nil
  end
end
