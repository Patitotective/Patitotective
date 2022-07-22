import std/[strformat, strutils]

type Text = tuple[link, desc: string]

proc addLine(to: var string, str: string) = to.add(str & "\n")

const data: seq[(string, seq[(string, Text)])] = @{
  "📦 Applications & Bots": @{
    "nimlangbot": ("https://github.com/Patitotective/nimlangbot", "twitter bot that retweets and likes nimlang related tweets"), 
    "ImThemes": ("https://github.com/Patitotective/ImThemes", "dear imgui theme designer and browser"), 
    "ImClocks": ("https://github.com/Patitotective/ImClocks", "dear imgui clocks application"), 
    "ImPasswordGen": ("https://github.com/Patitotective/ImPasswordGen", "dear imgui random password generator application"), 
    "ImTemplate": ("https://github.com/Patitotective/ImTemplate", "template for making a single-windowed dear imgui application"), 
    "ImDemo": ("https://github.com/Patitotective/ImDemo", "dear imgui implementation of the 7GUIs tasks"), 
  }, 
  "📔 Libriaries": @{
    "niprefs": ("https://github.com/Patitotective/niprefs", "TOML based preferences system"), 
    "downit": ("https://github.com/Patitotective/downit", "asynchronous downloads manager"), 
    "ImStyle": ("https://github.com/Patitotective/ImStyle", "dear imgui styles manager"), 
    "tinydialogs": ("https://github.com/Patitotective/tinydialogs", "tinyfiledialogs bindings for nim"), 
  }, 
  "🔬 Experiments": @{
    "ImNimble": ("https://github.com/Patitotective/ImNimble", "dear imgui nimble client application"), 
    "ImTextEditor": ("https://github.com/Patitotective/ImTextEditor", "dear imgui text editor"), 
    "ImNotes": ("https://github.com/Patitotective/ImNotes", "dear imgui note-taking application"), 
    "ImAppImage": ("https://github.com/Patitotective/ImAppImage", "dear imgui appimages browser and manager"), 
    "ImClip": ("https://github.com/Patitotective/ImClip", "dear imgui clipboard manager application"), 
  }, 
  "👍 Contributions": @{
    "jitter": ("https://github.com/sharpcdf/jitter", "a git-based binary manager for linux")
  }, 
  "👨‍💻 About": @{
    "@patitotective": ("https://twitter.com/Patitotective", "twitter"), 
    "cristobalriaga@gmail.com": ("mailto:cristobalriaga@gmail.com", "email"), 
    "Patitotective#0127": ("https://discordapp.com/users/762008715162419261", "discord"), 
    "Patitotective Open Source": ("https://discord.gg/U23ZQMsvwc", "discord server"), 
  }, 
}

var output = "<pre style=\"font-family:Menlo,'DejaVu Sans Mono',consolas,'Courier New',monospace\">🙂 Patitotective\n"

# Calculate longest name
var longest = 0
for (_, content) in data:
  for (name, _) in content:
    if name.len > longest:
      longest = name.len

for e, (header, content) in data:
  output.addLine(&"{(if e == data.high: \"┗━━\" else: \"┣━━\")} {header}")

  for j, (name, text) in content:
    output.addLine(&"{(if e == data.high: \" \" else: \"┃\")}   {(if j == content.high and e == data.high: \"┗━━\" else: \"┣━━\")} <a href=\"{text.link}\">{name}</a>{' '.repeat((longest - name.len) + 4)}- {text.desc}")

output.addLine("</pre>")
output.addLine("![Patitotective github stats](https://github-readme-stats.vercel.app/api?username=patitotective&show_icons=true&title_color=f82371&icon_color=f8ca23&text_color=ffffff&bg_color=000000&border_color=ffffff)")

writeFile("README.md", output)
