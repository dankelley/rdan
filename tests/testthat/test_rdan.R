# vim:textwidth=128:expandtab:shiftwidth=4:softtabstop=4
library(rdan)

test_that("basic usage", {
    tempFile <- tempfile()
    useRDA(tempFile)
    l1 <- list(value = 1.0, comment = "one", context = "test1")
    l2 <- list(value = 2.0, comment = "two", context = "test2")
    storeRDA("test1", l1$value, l1$comment, l1$context)
    r <- retrieveRDA("test1")
    expect_equal(l1, r)
    expect_equal("test1", listRDA())
    storeRDA("test2", l2$value, l2$comment, l2$context)
    r <- retrieveRDA("test2")
    expect_equal(l2, r)
    expect_equal(c("test1", "test2"), listRDA())
    removeRDA("test2")
    expect_equal("test1", listRDA())
    unlink(tempFile)
    expect_error(listRDA(), "RDA file")
})
