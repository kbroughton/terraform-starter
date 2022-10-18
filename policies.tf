# ACCESS POLICY
#
# This example access policy gives everyone in the "Engineering" GitHub team
# read access to the stack.
#
# You can read more about access policies here:
#
# https://docs.spacelift.io/concepts/policy/stack-access-policy

# Access policies only take effect when attached to the stack.
resource "spacelift_policy_attachment" "access" {
  policy_id = spacelift_policy.access.id
  stack_id  = spacelift_stack.managed.id
}

