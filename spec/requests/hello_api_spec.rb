# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'hello API' do
  let(:method){'get'}

  subject(:entry_point){ '/' }
  let(:json){ JSON.parse(last_response.body) }
  
  context '正常終了' do
    before do
      get entry_point
    end

    it 'hello :)', autodoc: true do
      expect(json).to eq({'message' => 'hello :)'})
    end
  end
end
