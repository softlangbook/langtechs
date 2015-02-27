name := "ScalaFSML"

version := "1.0"

scalaVersion := "2.11.5"


lazy val root = project.in(file(".")).aggregate(fsml).dependsOn(fsml)

lazy val fsml = project
