# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.rrpproxy.net/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.rrpproxy.net.rb'

describe Whois::Record::Parser::WhoisRrpproxyNet, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.rrpproxy.net/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("This data is provided by Hosting Concepts for information purposes, and to assist persons obtaining information about or related to domain name registration records. Hosting Concepts does not guarantee its accuracy. By submitting a WHOIS query, you agree that you will use this data only for lawful purposes and that, under no circumstances, you will use this data to 1) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via E-mail (spam); or 2) enable high volume, automated, electronic processes that apply to this WHOIS server. These terms may be changed without prior notice. By submitting this query, you agree to abide by this policy.")
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("openprovider.com")
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.name).to eq("Key-Systems")
      expect(subject.registrar.organization).to eq("Key-Systems GmbH")
      expect(subject.registrar.url).to eq("http://www.domaindiscount24.com/")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("P-AEV84")
      expect(subject.registrant_contacts[0].name).to eq("Arno Vis")
      expect(subject.registrant_contacts[0].organization).to eq("Openprovider")
      expect(subject.registrant_contacts[0].address).to eq("Willem Buytewechstraat 40")
      expect(subject.registrant_contacts[0].city).to eq("Rotterdam")
      expect(subject.registrant_contacts[0].zip).to eq("3024 BN")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("NL")
      expect(subject.registrant_contacts[0].phone).to eq("+31 104482299")
      expect(subject.registrant_contacts[0].fax).to eq("+31 102440250")
      expect(subject.registrant_contacts[0].email).to eq("domreg@openprovider.nl")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to have(1).items
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("P-AEV84")
      expect(subject.admin_contacts[0].name).to eq("Arno Vis")
      expect(subject.admin_contacts[0].organization).to eq("Openprovider")
      expect(subject.admin_contacts[0].address).to eq("Willem Buytewechstraat 40")
      expect(subject.admin_contacts[0].city).to eq("Rotterdam")
      expect(subject.admin_contacts[0].zip).to eq("3024 BN")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("NL")
      expect(subject.admin_contacts[0].phone).to eq("+31 104482299")
      expect(subject.admin_contacts[0].fax).to eq("+31 102440250")
      expect(subject.admin_contacts[0].email).to eq("domreg@openprovider.nl")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to have(1).items
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("P-AEV84")
      expect(subject.technical_contacts[0].name).to eq("Arno Vis")
      expect(subject.technical_contacts[0].organization).to eq("Openprovider")
      expect(subject.technical_contacts[0].address).to eq("Willem Buytewechstraat 40")
      expect(subject.technical_contacts[0].city).to eq("Rotterdam")
      expect(subject.technical_contacts[0].zip).to eq("3024 BN")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("NL")
      expect(subject.technical_contacts[0].phone).to eq("+31 104482299")
      expect(subject.technical_contacts[0].fax).to eq("+31 102440250")
      expect(subject.technical_contacts[0].email).to eq("domreg@openprovider.nl")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to have(3).items
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.openprovider.nl")
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.openprovider.be")
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.openprovider.eu")
    end
  end
end
