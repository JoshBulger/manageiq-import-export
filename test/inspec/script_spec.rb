control 'scirpts-01' do
  impact 1.0
  title 'rhconsulting scripts'
  describe file('/opt/cfme-rhconsulting-scripts') do
    it { should be_directory }
  end
  describe file('/usr/bin/miqexport') do
    it { should  be_executable }
  end
  describe file('/usr/bin/miqimport') do
    it { should  be_executable }
  end
  prefix = '/var/www/miq/vmdb/lib/tasks/rhconsulting_'
  objects = %w(alerts buttons customization_templates miq_ae_datastore policies
  provision_dialogs reports roles service_catalogs service_dialogs tags
  widgets)
  objects.each do |object|
    object_path = prefix+object+'.rake'
    describe file(object_path) do
      it { should exist }
    end
  end
end
