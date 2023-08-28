# frozen_string_literal: true

require 'spec_helper'

describe 'unit_tests_lab::files' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with dev hostname' do
        let(:node) do 
          'blah-pupp-dev01' 
        end

        it { is_expected.to compile.with_all_deps }
        it { is_expected.to contain_file('/tmp/blah.txt').with_content('I am a dev file') }
      end

      it { is_expected.to compile.with_all_deps }
      it { is_expected.to contain_file('/tmp/blah.txt').with_content('I am a prod file') }
    end
  end
end
