# frozen_string_literal: true

module RubyUI
  class AlertDialogContent < Base
    def view_template(&block)
      dialog(data: {ruby_ui__alert_dialog_target: "dialog"}, **attrs, &block)
    end

    private

    def default_attrs
      {
        class: "flex flex-col w-full max-w-lg max-h-screen overflow-y-auto gap-4 border bg-background p-6 shadow-lg duration-200 data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%] data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%] sm:rounded-lg md:w-full"
      }
    end
  end
end
