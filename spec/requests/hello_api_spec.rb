# -*- coding: utf-8 -*-
require 'spec_helper'

describe 'hello API' do
  let(:method){'get'}

  subject(:entry_point){ '/' }
  let(:json){ JSON.parse(last_response.body) }
  
  context 'request success' do
    before do
      get entry_point
    end

    it 'status code 200' do
      expect(last_response.status).to eq(200)
    end

    it 'hello :)', autodoc: true do
      expect(json).to eq({'message' => 'hello :)'})
    end
  end
end
