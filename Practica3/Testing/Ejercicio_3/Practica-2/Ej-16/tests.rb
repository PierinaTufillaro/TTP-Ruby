#Tests

require_relative 'codigo.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#da_nil?' do
	it 'Arroja true ya que el bloque devuelve nil' do
		assert_equal(true, da_nil?{nil})
	end
	it 'Arroja false ya que el bloque devuelve nil' do
		assert_equal(false, da_nil?{"pier"})
	end
end