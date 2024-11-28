class WebhookController < Telegram::Bot::UpdatesController
  include Telegram::Bot::UpdatesController::TypedUpdate

  def start!(word = nil, *words)
    respond_with :message, text: (word || "") + "hello!"
  end
end
