# frozen_string_literal: true

module PhlexUI
  class Table::Body < Base
    def template(&)
      tbody(**attrs, &)
    end

    private

    def default_attrs
      {
        class: "[&_tr:last-child]:border-0"
      }
    end
  end
end
