locals {
  namespace  = element(concat([for entry in kubernetes_namespace.this : entry.id], list("")), 0)
  account_id = data.aws_caller_identity.current.account_id
}
