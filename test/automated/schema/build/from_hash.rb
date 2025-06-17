require_relative '../../automated_init'

context "Data Structure" do
  context "Build" do
    context "From Hash" do
      data = Schema::Controls::Schema.hash
      data_structure = Schema::Controls::Schema::Example.build data

      test "Hash values are the attributes' values" do
        assert(data_structure.some_attribute == 'some value')
      end
    end
  end
end
