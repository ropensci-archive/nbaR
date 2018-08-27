if (Sys.getenv("BUILD_PKGDOWN") != "" &&
  Sys.getenv("TRAVIS_EVENT_TYPE") != "cron" &&
    Sys.getenv("TRAVIS_R_VERSION_STRING") == "devel") {
  get_stage("deploy") %>%
    add_step(step_build_pkgdown()) %>%
    add_step(step_push_deploy())
}

