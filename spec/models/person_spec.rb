require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) { create(:person) }

  subject { person }
  it { should respond_to(:firstname) }
  it { should respond_to(:lastname) }
  it { should respond_to(:email) }
  it { should respond_to(:tags) }

end
