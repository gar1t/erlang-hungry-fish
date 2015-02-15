-module(index).

data(_) ->
    #{snippets => {markdown, "snippets/*.md"}}.

site(_) ->
    #{"site/index.html"        => {template, "templates/index.html"},
      "site/instructions.html" => {template, "templates/instructions.html"},
      "site/whoami.html"       => {template, "templates/whoami.html"},
      "site/questions.html"    => {template, "templates/questions.html"},
      "site/code-index.html"   => {template, "templates/code-index.html"},
      "site"                   => {dir, "assets"}}.
