control 'export-01' do
  impact 1.0
  title 'export domain ManageIQ'
  describe file('/tmp/cfme-export/domain/ManageIQ/ManageIQ') do
    it { should be_directory }
  end
end
