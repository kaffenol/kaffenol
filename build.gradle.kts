plugins {
    base
}

group = "org.kaffenol"
version = "0.0.0-SNAPSHOT"

allprojects {
    repositories {
        mavenCentral()
        google()
    }
}

tasks.register("projectInfo") {
    group = "help"
    description = "Prints the status of the pre-implementation project scaffold."
    doLast {
        println("Kaffenol repository scaffold: no application source has been added yet.")
    }
}
