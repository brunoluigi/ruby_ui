# frozen_string_literal: true

module PhlexUI
  class Dialog::Description < Base
    def template(&)
      p(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "text-sm text-muted-foreground"
      }
    end
  end
end
