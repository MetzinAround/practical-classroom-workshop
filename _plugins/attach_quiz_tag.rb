module Jekyll
    class RenderQuizBlock < Liquid::Block
  
      def render(context)
        text = super
        "<div class=quizdown>#{text}</div>"
      end
  
    end
  end
  
  Liquid::Template.register_tag('quiz', Jekyll::RenderQuizBlock)