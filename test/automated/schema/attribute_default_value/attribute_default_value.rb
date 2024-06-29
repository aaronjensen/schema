require_relative '../../automated_init'

context "Schema" do
  context "Attribute Default Value" do
    example = Schema::Controls::Schema::DefaultValue.example

    test "Value is set by executing the proc" do
      assert(example.some_attribute == 'some default value')
    end
  end
end
