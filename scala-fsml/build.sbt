name := "fsml"

lazy val commonSettings = Seq(
  organization := "de.sschauss",
  version := "0.0.1",
  scalaVersion := "2.12.0-M1",
  scalacOptions ++= Seq(
    "-Xlog-free-terms",
    "-unchecked",
    "-deprecation",
    "-feature"
  )
)

lazy val root = project
  .in(file("."))
  .aggregate(fsml_impl, fsml_test)

lazy val fsml_impl = project
  .settings(commonSettings: _*)

lazy val fsml_test = project
  .dependsOn(fsml_impl)
  .settings(commonSettings: _*)
