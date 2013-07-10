prompts = [
  "Has played minecraft"
  "Has their own website hosted on the web"
  "Is in 5th grade"
  "Is in high school"
  "Grew up in long island"
  "Lived in five different states"
  "First time at CoderDojo"
  "Been at CoderDojo more than three times"
  "Plays an instrument"
  "Wears glasses"
  "Has two or more children"
  "Read a book within the last month"
  "Owns a nintendo ds"
  "Owned a Sega Genesis"
  "Doesn't like spiders"
  "Owns a pet"
  "Watched Hunger Games"
  "Plays basketball"
  "Is a lefty"
  "Has a sibling"
  "Likes Nicki Minaj"
  "Is older than 20"
  "Plays video games"
  "Likes ice cream"
  "Uses Instagram"
  "Has play pokemon card games"
  "Watched Wreck it Ralph"
  "Owned an Atari"
  "Has been to Disney World"
  "Knows how to play chess"
  "Favorite color is magenta"
  "Watches Legend of Korra"
  "Watches Avatar Last Air Bender"
  "Has programmed Android"
  "Has been to Europe"
  "Owns a car"
  "Played Neopets"
  "Plays the Sims"
  "Attended a concert"
  "Has a last name with more than 10 characters"
  "Plays a violin"
  "Lived on the West Coast for more than a year"
  "Is a designer"
  "Is a software developer"
  "Knows how to code in Python"
  "Has a Tumblr"
  "Owned a Super Nintendo"
  "Have not played Angry Birds"
  "Enjoys Black Coffee"
  "Part of Technovation"
]

window.onload = ->
  document.querySelectorAll('tr:nth-child(4) td:nth-child(4)')[0].className = 'blank'
  shuffle(prompts)
  for td in document.querySelectorAll('td:not(.blank)')
    td.innerHTML = prompts.pop()


# Functions
swap = (ary, a, b) -> temp = ary[b]; ary[b] = ary[a]; ary[a] = temp; ary
shuffle = (ary) ->
  for i in [1..100]
    length = ary.length
    swap(ary, i % length, parseInt(Math.random() * length))
