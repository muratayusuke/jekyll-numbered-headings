NUMBERED_HEADING_REGEX = /^(#+)1\. (.+)/
HEADING_REGEX = /^(#+) (.+)/
MIN_LEVEL = 2
MAX_LEVEL = 6

Jekyll::Hooks.register [:pages, :posts, :documents], :pre_render do |article|
  # If "numbered-headings: true" in front matter, number regular headings too.
  global_page_numbered_headings = article.data.fetch("numbered-headings", false)
  if global_page_numbered_headings
    heading_regex = Regexp.union(HEADING_REGEX, NUMBERED_HEADING_REGEX)
    min_level = article.data.fetch("numbered-headings-min-level", MIN_LEVEL)
    max_level = article.data.fetch("numbered-headings-min-level", MAX_LEVEL)
  else
    heading_regex = NUMBERED_HEADING_REGEX
    min_level = 1
    max_level = 6
  end

  levels = Array.new(max_level, 0)
  in_code_block = false

  converted_lines = article.content.split("\n").map do |line|
    in_code_block = !in_code_block if line.match(/^```/)
    next line if in_code_block

    matched = line.match(heading_regex)
    next line unless matched

    heading = matched[1]
    level = heading.length
    text = matched[2]
    next line if !level.between?(min_level, max_level)

    levels[level - 1] += 1
    (level..max_level).each do |l|
      levels[l] = 0
    end

    levels_string = ''
    (0..(level - 1)).each do |l|
      levels_string += "#{levels[l]}." if levels[l] > 0
    end
    "#{heading} #{levels_string} #{text}"
  end

  article.content = converted_lines.join("\n")
end

