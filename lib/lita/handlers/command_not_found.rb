module Lita
  module Handlers
    class CommandNotFound < Handler

      route(/^cd$/i, :command_not_found, command: false, help: { "cd" => "Command not found."} )
      route(/^dir$/i, :command_not_found, command: false, help: { "dir" => "Command not found."} )
      route(/^exit$/i, :command_not_found, command: false, help: { "exit" => "Command not found."} )
      route(/^ls$/i, :command_not_found, command: false, help: { "ls" => "Command not found."} )

      def command_not_found(request)
        request.reply("Command not found")
      end

    end

    Lita.register_handler(CommandNotFound)


  end
end
