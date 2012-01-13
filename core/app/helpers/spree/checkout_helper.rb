module Spree
  module CheckoutHelper
    def checkout_states
      if @order.payment and @order.payment.payment_method.payment_profiles_supported?
        %w(address delivery payment confirm complete)
      else
        %w(address delivery payment complete)
      end
    end

    def checkout_progress
      states = checkout_states
      items = states.map do |state|
        text = t("order_state.#{state}").titleize

        css_classes = []
        current_index = states.index(@order.state)
        state_index = states.index(state)

        if state_index < current_index
          css_classes << 'checkoutDone'
          text = link_to text, checkout_state_path(state)
        end

        content_tag('li', content_tag('span', text), :class => css_classes.join(' '))
      end
      content_tag('ol', raw(items.join("\n")), :class => 'progress-steps', :id => "checkout-step-#{@order.state}")
    end
  end
end
