require "spec_helper"

describe IpToStandupMapper do

  describe '#authorized?' do
    it "can tell if a ip is authorized" do
      FactoryGirl.create(:standup, ip_addresses_string: "127.0.0.0/13")
      FactoryGirl.create(:standup, ip_addresses_string: "168.2.1.3, 168.2.1.4")

      mapper = IpToStandupMapper.new
      mapper.authorized?(ip_address_string: "127.0.0.8").should == true
      mapper.authorized?(ip_address_string: "168.2.1.3").should == true
    end

    it 'returns false with an invalid address' do
      mapper = IpToStandupMapper.new
      mapper.authorized?(ip_address_string: "").should == false
    end
  end


  describe "#standup_matching_ip_address" do
    it "can tell what standup corresponds to an ip" do
      nyc_standup = FactoryGirl.create(:standup, ip_addresses_string: "127.0.0.1/24")
      london_standup = FactoryGirl.create(:standup, ip_addresses_string: "168.2.1.3/24")

      mapper = IpToStandupMapper.new
      mapper.standups_matching_ip_address(ip_address: "127.0.0.88").should == [nyc_standup]
    end

    context "when no standups match the ip address" do
      it "returns standups without ip addresses set" do
        nyc_standup = FactoryGirl.create(:standup, ip_addresses_string: "127.0.0.1/24")
        anywhere_standup = FactoryGirl.create(:standup, ip_addresses_string: "")

        mapper = IpToStandupMapper.new
        matching = mapper.standups_matching_ip_address(ip_address: "234.2.1.3")
        matching.should == [anywhere_standup]
      end
    end
  end
end
