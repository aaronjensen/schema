module Schema
  module DataStructure
    def self.included(cls)
      warn "Schema::DataStructure is deprecated. Use Schema directly instead."
      cls.class_exec do
        include Schema
      end
    end
  end
end
