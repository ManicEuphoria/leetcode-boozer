RSpec.configure do |config|
  # 启用警告。推荐使用，但在某些情况下可能会因为依赖问题而过于冗长。
  config.warnings = true

  # 允许通过 `:focus` 元数据来限制运行的测试示例或组。
  # 当没有任何示例或组被标记为 `:focus` 时，所有示例都会运行。
  # RSpec 还提供了 `it`、`describe` 和 `context` 的别名，它们包含 `:focus` 元数据：`fit`、`fdescribe` 和 `fcontext`。
  config.filter_run_when_matching :focus

  # 允许随机化测试顺序，以发现依赖顺序的测试。
  config.order = :random

  # 在每次运行测试时输出随机种子，以便在失败时可以重现测试顺序。
  Kernel.srand config.seed

  # 允许在测试失败时保留失败的示例，以便可以单独重新运行它们。
  config.example_status_persistence_file_path = "spec/examples.txt"

  # 允许在测试失败时输出详细的失败信息。
  config.default_formatter = "doc" if config.files_to_run.one?

  # 允许在测试失败时停止运行后续测试。
  # config.fail_fast = true
end