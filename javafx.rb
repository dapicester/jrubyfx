require 'jrubyfx'

class HelloJRubyFX < JRubyFX::Application
  def start(stage)
    uri = 'http://127.0.0.1:4567'
    options = {
      title: 'App',
      width: 800,
      height: 600
    }
    with stage, options do
      layout_scene do
        stack_pane do
          web_view do
            get_engine.load uri.to_s
          end
        end
      end
    end
    stage.show
  end
end

#HelloJRubyFX.launch
