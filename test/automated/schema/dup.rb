require_relative '../automated_init'

context "Data Structure" do
  context "Dup" do
    context "Shallow Copy" do
      data_structure = Schema::Controls::Schema.example

      duplicate = data_structure.dup

      data_structure.some_attribute = Schema::Controls::Attribute::Value.random

      test "Duplicate is not the same object as the original" do
        refute(duplicate.object_id == data_structure.object_id)
      end

      test "Attribute references are different" do
        refute(duplicate.some_attribute == data_structure.some_attribute)
      end
    end

    context "Deep Copy Via Transformation" do
      data = Schema::Controls::Schema.hash

      refute(data[:some_attribute] == 'some read value')

      data_structure = Schema::Controls::Schema::ReadAndWrite::Example.build(data)

      duplicate = data_structure.dup

      test "Duplicate is not the same object as the original" do
        refute(duplicate.object_id == data_structure.object_id)
      end

      test "Attributes are transformed" do
        refute(duplicate.some_attribute.object_id == data_structure.some_attribute.object_id)
      end
    end
  end
end
