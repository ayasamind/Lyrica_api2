class SongsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_404

  def render_404(e = nil)
    if e
      logger.error e 
      logger.error e.backtrace.join("\n") 
    end

    render template: 'errors/error404', status: 404, layout: 'application', content_type: 'text/html'
  end
end
