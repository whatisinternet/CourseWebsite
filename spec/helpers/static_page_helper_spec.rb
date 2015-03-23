require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PageHelper. For example:
#
# describe PageHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe StaticPagesHelper, type: :helper do
  describe StaticPagesHelper do
    describe "markdown_content" do
      it "makes the content markdown" do
        expect(helper.markdown_content("# test")).to eq("<h1>test</h1>\n")
      end
    end
  end
end

