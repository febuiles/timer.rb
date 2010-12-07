require 'spec_helper'

describe Timer::TimeParser do
  describe ".parse_duration" do
    it "parses a time in minutes and returns duration in seconds" do
      t("2m").should == 120
    end

    it "parses a time in hours" do
      t("2h").should == 7200
    end

    it "parses a time in seconds" do
      t("2s").should == 2
    end

    it "parses a time with hours and minutes" do
      t("2h 2m").should == 7320
    end

    it "parses a time with hours and seconds" do
      t("2h 2s").should == 7202
    end

    it "parses a time with minutes and seconds" do
      t("2m 20s").should == 140
    end

    it "parses a time with hours, minutes and seconds" do
      t("2h 2m 2s").should == 7322
    end

    it "ignores the order of the parameters" do
      t("2m 2h 2s").should == 7322
      t("2s 2m 2h").should == 7322
    end

    it "doesn't expect integer values" do
      t("0.5m").should == 30
      t("2.3h 0.5m").should == 8310
    end

    it "returns nil for empty inputs" do
      t(nil).should be_nil
    end

    it "returns nil for unrecognized inputs" do
      t("oh, hai there guys, 2his not valid").should be_nil
    end
  end
end
