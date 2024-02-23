#import "/src/book.typ"
#import "/typ/templates/page.typ"
#import "/typ/templates/page.typ": main-color

#let refs = {
  let cl = book.cross-link;
  (
    writing: cl.with("/basic/writing.typ"),
    scripting-base: cl.with("/basic/scripting-base.typ"),
    scripting-complex: cl.with("/basic/scripting-complex.typ"),
    scripting-modules: cl.with("/intermediate/scripting-modules.typ"),
    content-scope-style: cl.with("/intermediate/content-scope-and-style.typ"),
    content-stateful: cl.with("/intermediate/content-stateful.typ"),
    ref-color: cl.with("/basic/reference-color.typ"),
    ref-math-symbols: cl.with("/basic/reference-math-symbols.typ"),
    ref-layout: cl.with("/intermediate/reference-layout.typ"),
    ref-length: cl.with("/intermediate/reference-length.typ"),
    misc-font-setting: cl.with("/misc/font-setting.typ"),
  )
}

#let exec-code(cc, res: none, scope: (:), eval: eval) = {
  // Don't corrupt normal headings
  set heading(outlined: false)

  rect(width: 100%, inset: 10pt, if res != none {
    res
  } else {
    eval(cc.text, mode: "markup", scope: scope)
  })
}

#let code(cc, show-cc: true, res: none, scope: (:), eval: eval, exec-code: exec-code) = {
  if show-cc {
    cc
  }
  exec-code(cc, res: res, scope: scope, eval: eval)
}

#let fg-blue = main-color.mix(rgb("#0074d9"))
#let pro-tip(content) = rect(
  width: 100%,
  inset: (x: 0.65em, y: 0.65em, left: 0.65em * 0.6),
  radius: 4pt,
  fill: rgb("#0074d920"), {
  set text(fill: fg-blue)
  stack(
    dir: ltr,
    image("/assets/files/info-icon.svg", width: 1em),
    0.2em,
    box(width: 100% - 1.2em, v(0.2em) + content)
  )
})

#let typst-func(it) = [
  #raw(it + "()", lang: "typc") <typst-raw-func>
]
