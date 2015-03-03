name := "ScalaFSML"

lazy val commonSettings = Seq(
  organization := "de.sschauss",
  version := "0.0.1",
  scalaVersion := "2.11.5"
)

lazy val fsml = project
  .settings(commonSettings: _*)

lazy val fsml_test = project
  .dependsOn(fsml)
  .settings(commonSettings: _*)
