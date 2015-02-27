name := "FSML"

version := "1.0"

scalaVersion := "2.11.5"

libraryDependencies ++= List(
  "org.scala-lang" % "scala-reflect" % scalaVersion.value,
  "org.scala-lang" % "scala-compiler" % scalaVersion.value
)