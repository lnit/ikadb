App.filter "afconv", [ ->
  Convert = (char) ->
    if char.match(/[0-9]/)
      num = parseInt(char)
      ["〇","一","二","三","四","五","六","七","八","九"][num]
    else
      char

  return (input) ->
    return input if window.afDisable
    return unless input
    ary = input.toString().split("").map(Convert)
    ary.join("")
]
