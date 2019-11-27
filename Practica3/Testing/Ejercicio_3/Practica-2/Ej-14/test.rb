#Tests

require_relative 'codigo.rb'
require 'minitest/autorun'
require 'minitest/spec'

describe '#opposite' do
	it 'Arroja una excepcion de tipo RuntimeError porque 
	el valor a cambiar no es boolean' do
		y = 2
		assert_raises(RuntimeError) do
		y.opposite
		end
	end

	it 'Devuelve false ya que el valor a cambiar
	es true' do
		x = true
		assert_equal(false,x.opposite)
	end

	it 'Devuelve true ya que el valor a cambiar
	es false' do
		x = false
		assert_equal(true,x.opposite)
	end
end