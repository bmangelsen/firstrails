class WelcomeController < ApplicationController
  def index
    @hello = "Welcome to my super awesome site"
  end

  def name
    @hello = "Hi #{params[:name]}, how can I help you today?"
    render :index
  end

  def lorem
    @type = params[:type]
    case @type
      when "standard"
        @text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
      when "coffee"
        @text = "Fair trade sit, carajillo aftertaste americano, roast cortado roast breve saucer french press. Viennese, espresso caffeine, a, and dark mug caramelization seasonal. Body aromatic shop, extraction siphon doppio roast seasonal."
      when "cat"
        @text = "Plan steps for world domination my left donut is missing, as is my right wake up human for food at 4am so lay on arms while you're using the keyboard lick butt and make a weird face yet purr, but sleep in the bathroom sink. Eat grass, throw it back up. Hunt by meowing loudly at 5am next to human slave food dispenser kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff yet sleep on keyboard, yet loves cheeseburgers destroy the blinds you call this cat food? for wake up human for food at 4am. Jump off balcony, onto stranger's head meow loudly just to annoy owners yet jump around on couch, meow constantly until given food, , yet put butt in owner's face gnaw the corn cob vommit food and eat it again. Curl up and sleep on the freshly laundered towels refuse to drink water except out of someone's glass, eat grass, throw it back up, i cry and cry and cry unless you pet me, and then maybe i cry just for fun swat at dog, yet tuxedo cats always looking dapper. Spread kitty litter all over house. Walk on car leaving trail of paw prints on hood and windshield purr, attack the dog then pretend like nothing happened."
      when "cupcake"
        @text = "Ice cream candy danish chocolate bar pie sesame snaps. Sweet roll soufflé bonbon powder. Lemon drops candy canes tootsie roll tootsie roll. Pie cake ice cream apple pie halvah toffee."
      else
        @text = "Sorry I don't know that one"
    end
  end
end
