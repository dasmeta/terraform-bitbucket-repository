#resource "bitbucket_branch_restriction" "master" {
#  owner      = "myteam"
#  repository = "terraform-code"
#
#  kind = "push"
#  pattern = "master"
#}
#
#data "bitbucket_user" "reviewer" {
#  username = "gob"
#}
#
#resource "bitbucket_default_reviewers" "infrastructure" {
#  owner      = "myteam"
#  repository = "terraform-code"
#
#  reviewers = [
#    "${data.bitbucket_user.reviewer.uuid}",
#  ]
#}
