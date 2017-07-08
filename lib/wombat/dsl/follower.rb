module Wombat
  module DSL
    class Follower < PropertyGroup
      attr_accessor :wombat_property_selector

      def initialize(name, selector)
        @wombat_property_selector = selector

        super(name)
      end

      # So that Property::Locators::Iterator can identify this class
      # as a follow property.
      def wombat_property_format
        :follow
      end

      def url(&blk)
        self["url"] = Property.new("url", nil, &blk)
      end
    end
  end
end
