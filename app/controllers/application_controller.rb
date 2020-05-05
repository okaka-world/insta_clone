class ApplicationController < ActionController::Base
  def hello
    render inline: 'hello world <script>console.log($.fn.jquery);</script>'
  end
end
