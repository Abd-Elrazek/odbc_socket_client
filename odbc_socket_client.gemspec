Gem::Specification.new do |s|
  s.name = 'odbc_socket_client'
  s.version = "0.0.1"
  s.date = "2010-11-12"
  s.authors = ['Marian Theisen']
  s.email = 'marian@cice-online.net'
  s.summary = 'Rudimentary ActiveRecord ODBCSocketServer Adapter'
  s.homepage = 'www.cice-online.net'
  s.description = 'Rudimentary ActiveRecord ODBCSocketServer Adapter'
  
  s.files        =  Dir["**/*"] - 
                    Dir["coverage/**/*"] - 
                    Dir["rdoc/**/*"] - 
                    Dir["doc/**/*"] - 
                    Dir["sdoc/**/*"] - 
                    Dir["rcov/**/*"]
                    
  s.require_path = 'lib'
end