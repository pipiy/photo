require 'spec_helper'

describe HomeController do
  let!(:paintings) { 2.times.map { Painting.create } }

  context 'viewing home page' do
    before { get :index }

    it { should respond_with(:success) }
    it { should render_template('index') }
    it { assigns(:paintings).should == paintings }
  end
end

