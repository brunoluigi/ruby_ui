# frozen_string_literal: true

module PhlexUI
  class Tabs::Trigger < Base
    def initialize(value:, **attrs)
      @value = value
      super(**attrs)
    end

    def template(&)
      button(**attrs, &)
    end

    private

    def default_attrs
      {
        type: :button,
        data: {
          tabs_target: :trigger,
          action: "click->tabs#show",
          value: @value
        },
        class: "inline-flex items-center justify-center whitespace-nowrap rounded-md px-3 py-1 text-sm font-medium ring-offset-background transition-all focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=active]:bg-background data-[state=active]:text-foreground data-[state=active]:shadow"
      }
    end
  end
end
