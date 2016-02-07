require "spec_helper"

describe Lita::Handlers::CommandNotFound, lita_handler: true do
  it { is_expected.to route("cd") }
  it { is_expected.to route("dir") }
  it { is_expected.to route("exit") }
  it { is_expected.to route("ls") }

  it "should respond with cd with 'Command not found'" do
    send_message("cd")
    expect(replies.last).to eq("Command not found")
  end

  it "should respond with dir with 'Command not found'" do
    send_message("dir")
    expect(replies.last).to eq("Command not found")
  end

  it "should respond with exit with 'Command not found'" do
    send_message("exit")
    expect(replies.last).to eq("Command not found")
  end

  it "should respond with ls with 'Command not found'" do
    send_message("ls")
    expect(replies.last).to eq("Command not found")
  end
end
