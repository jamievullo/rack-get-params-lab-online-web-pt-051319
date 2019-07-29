class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []
  
def call(env)
    resp = Rack::Response.new	    

  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  #req.path.match(/items/)
      @@items.each do |item|
          resp.write "#{item}\n"
      end
    if req.path.match(/cart/)
       @@cart.empty?
          resp.write "Your cart is empty"
      else
      @@cart.each do |cart|
          rep.write "#{item}\n"
      end
    end
    if req.path.match(/add/)
			item = req.params["item"]
			 	@@items.include?(item)
				@@cart << item
				resp.write "added #{item}"
			else
				resp.write "We don't have that item"
			end
    if req.path.match(/search/)	    
      search_term = req.params["q"]	      
      resp.write handle_search(search_term)	      
    end
  end
    resp.finish
  end

  def handle_search(search_term)
    if @@items.include?(search_term)
      return "#{search_term} is one of our items"
    else
      return "Couldn't find #{search_term}"
    end 
  end
  

