test_that("test Multiserver works", {
  expect_named(Multiserver(bank$arrival_time, bank$service_time, NumServers = 3))
  expect_error(Multiserver())
})
