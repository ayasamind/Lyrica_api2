class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
   def render_404(e = nil)
    if e
      logger.error e 
      logger.error e.backtrace.join("\n") 
    end

    render template: 'errors/error404', status: 404, layout: 'application', content_type: 'text/html'
  end
 end