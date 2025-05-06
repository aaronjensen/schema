require_relative "../../automated_init"

context "Data Structure" do
  context "Transform In Alias" do
    data = Schema::Controls::DataStructure.hash

    refute(data[:some_attribute] == "some read value")

    data_structure = Schema::Controls::DataStructure::ReadAndWrite::InAndOutAliases::Example.build(data)

    test "The input data has been intercepted and modified" do
      assert(data_structure.some_attribute == "some read value")
    end
  end
end
