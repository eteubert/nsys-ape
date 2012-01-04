def console_red(text);          colorize(text, "\e[1m\e[31m"); end
def console_green(text);        colorize(text, "\e[1m\e[32m"); end
def console_yellow(text);       colorize(text, "\e[1m\e[33m"); end
def colorize(text, color_code)  "#{color_code}#{text}\e[0m" end

ERROR_LINES = 7

guard 'shell' do
  watch(/(.*).tex/) do |m|
    out = `make`

    lines_to_print = 0
    count_errors = 0
    out.lines.each_with_index do |line, index|
      if line.scan(/^!.+$/).count > 0
        lines_to_print = ERROR_LINES
        count_errors = count_errors + 1
        print console_red(line)
      elsif lines_to_print > 0
        lines_to_print = lines_to_print - 1
        print console_yellow(line)
      end
    end
    
    if count_errors > 0
      puts console_red(count_errors.to_s + " Errors!")
    else
      puts console_green("Wohoo, clean build!")
    end
    
    nil
  end
end
