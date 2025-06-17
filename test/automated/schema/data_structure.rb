require_relative '../automated_init'

context "Data Structure" do
  test "Is a Schema object" do
    ancestors = Schema::Controls::Schema.ancestors
    assert(ancestors.include? Schema)
  end

  test "Can configure its dependencies" do
    example = Schema::Controls::Schema::ConfigureDependencies.example
    assert(example.some_dependency == :set)
  end
end
