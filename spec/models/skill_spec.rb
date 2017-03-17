require 'rails_helper'

describe Skill do
  it { should validate_presence_of :language}
  it { should belong_to :project}
end
