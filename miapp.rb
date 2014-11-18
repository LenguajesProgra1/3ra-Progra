require 'rubygems'
require 'sinatra/base'

module Project

	class Pregunta

		def initialize()
			@preg = ''

		end

		def guardarDatos(preg)
			File.open('Preguntas.txt', 'a+') do |f1|
				f1.write @preg
		end
	end
end


	class Respuesta
		
		def initizalize()
			@resp = ''
		
		end

		def guardarDatos(resp)
			File.open('Respuestas.txt', 'a+') do |f1|
				f1.write @resp
		end

	class Etiqueta
		
		def initialize()
			@eti = ''
		end

		def guardarDatos(eti)
			File.open('Etiquetas.txt', 'a+') do |f1|
				f1.write @eti
		end



class App < Sinatra::Base
	
	get '/home' do
		@home = '/home'
		@agregar = '/agregar'
		haml :apartas
	end

	post '/home' do
		@preg = params[:pregunta]
		@resp = params[:respuesta]
		@eti = params[:etiqueta]
	guardarDatos(preg,resp,eti)
	end

	get'/' do
		@home = '/home'
		haml :signIn
	end

	get '/agregar' do
		haml :agregar
	end
end
end
