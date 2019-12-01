class Middleware 
	def initialize(app)
		@app = app
	end
	
	def call(env)
		estado,headers,body = @app.call(env)
		new_body = []
		body.each { |i| new_body << i.gsub(/\d/, 'x') }
		[estado,headers,new_body]
	end
end