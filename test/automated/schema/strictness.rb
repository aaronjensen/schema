require_relative '../automated_init'

context "Data Structure" do
  context "Strictness" do
    context "Hash with extra attributes" do
      context "Not Strict (Default)" do
        data = Schema::Controls::Schema::ExtraAttributes.data
        data_structure = Schema::Controls::Schema::ExtraAttributes::Example.build(data)

        test "Sets matching attributes" do
          assert(data_structure.some_attribute == 'some value')
        end
      end

      context "Strict" do
        strict = true

        data = Schema::Controls::Schema::ExtraAttributes.data

        test "Is incorrect" do
          assert_raises(Schema::Error) do
            Schema::Controls::Schema::ExtraAttributes::Example.build(data, strict)
          end
        end
      end
    end
  end
end
