# frozen_string_literal: true

module RubyUI
  class CommandDialogContent < Base
    SIZES = {
      xs: "max-w-sm",
      sm: "max-w-md",
      md: "max-w-lg",
      lg: "max-w-2xl",
      xl: "max-w-4xl",
      full: "max-w-full"
    }

    def initialize(size: :md, **attrs)
      @size = size
      super(**attrs)
    end

    def view_template(&block)
      dialog(data: {ruby_ui__command_target: "dialog"}, **attrs, &block)
    end

    private

    def default_attrs
      {
        class: [
          "grid w-full translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background shadow-lg duration-200 data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%] data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%] sm:rounded-lg md:w-full",
          SIZES[@size]
        ]
      }
    end
  end
end
