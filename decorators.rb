require_relative "colorizer"

def banner
  Dir.chdir(File.dirname(__FILE__))
  text = File.read("banner.txt")
  puts text.red
end

def confirm_begin
  reply = CLI::UI::Prompt.ask_password("Press any key to continue.")
  exit unless reply
end

def new_step(number, title)
  puts "\n=== STEP #{number} === #{title}".blue
end