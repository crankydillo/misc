println(
  new xml.PrettyPrinter(80, 2).format(
    <records>{
      io.Source.stdin.getLines.map { ln =>
        <record>{ln.split(",").map {f => <field>{f}</field>}}</record>
      }
    }</records>
  )
)
