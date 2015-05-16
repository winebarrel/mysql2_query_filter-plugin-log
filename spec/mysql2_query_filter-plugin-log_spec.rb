describe Mysql2QueryFilter::Plugin::Log do
  let(:client) { Mysql2::Client.new }
  let(:out) { StringIO.new }

  before do
    Mysql2QueryFilter.configure do |filter|
      filter.plugin :log, out: out
    end

    allow(client).to receive(:query_without_filter)
    client.query('select 1')
  end

  subject { out.string }
  it { is_expected.to eq "select 1\n" }
end
