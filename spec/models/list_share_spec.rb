require 'spec_helper'

describe ListShare do
  it { should belong_to(:user) }
  it { should belong_to(:list) }

  it { should validate_presence_of(:list_id) }
  it { should validate_presence_of(:user_id) }

  it { should validate_uniqueness_of(:list_id).scoped_to(:user_id) }
end
