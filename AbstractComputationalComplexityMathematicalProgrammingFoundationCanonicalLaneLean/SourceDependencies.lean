/-
All Rights Reserved - No License Granted

Copyright (c) 2026 HautevilleHouse. All rights reserved.

This repository is published for academic review, citation, priority, public
notice, and research-reference purposes only.

No license is granted to use, copy, reproduce, redistribute, modify, merge,
publish, distribute, sublicense, sell, fork, mirror, scrape, use for training or
fine-tuning, include in a dataset or benchmark, use to create, evaluate, or
benchmark a derivative system, incorporate into another system, or create
derivative works from this repository or any substantial portion of it without
prior written permission from the rights holder.

Viewing this repository on GitHub for academic review and citation is permitted
with all rights reserved by the rights holder.

Any discussion, review, comparison, implementation, derivative research use, or
public reference to this repository must cite the repository and preserve this
notice.

Unauthorized reproduction or redistribution of this repository, including public
GitHub forks containing the repository contents, constitutes copyright
infringement and may be subject to DMCA.
-/
import canonicalLaneMathlib.AdmissibleClass

/-!
# Source dependency model for `abstract-computational-complexity-mathematical-programming-foundation-canonical-lane`

This module records the import and data-route surface used by the source
package/scripts before translation into Lean data.

It makes the source runtime dependency boundary explicit. The dependency boundary is internal to the Lean package as structural data.
-/


namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency := [
  { file := "scripts/extract_cauchy_data.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "import", module := "cmath", name := "", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "from_import", module := "typing", name := "List", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/extract_cauchy_data.py", kind := "from_import", module := "typing", name := "Tuple", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "from_import", module := "typing", name := "List", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "from_import", module := "typing", name := "Tuple", alias := "", level := 0 },
  { file := "scripts/riemann_mapping_bridge.py", kind := "import", module := "sys", name := "", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "datetime", name := "datetime", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "datetime", name := "timezone", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "typing", name := "List", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/analytic_continuation_closure.py", kind := "from_import", module := "typing", name := "Tuple", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "import", module := "hashlib", name := "", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "from_import", module := "typing", name := "List", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/value_distribution_guard.py", kind := "from_import", module := "typing", name := "Tuple", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "json", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "import", module := "math", name := "", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "pathlib", name := "Path", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "typing", name := "Any", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "typing", name := "Dict", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "typing", name := "List", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "typing", name := "Optional", alias := "", level := 0 },
  { file := "scripts/promote_constants.py", kind := "from_import", module := "typing", name := "Tuple", alias := "", level := 0 }
]

def sourceRuntimeModules : List String :=
  ["__future__.annotations",
  "argparse",
  "cmath",
  "datetime.datetime",
  "datetime.timezone",
  "hashlib",
  "json",
  "math",
  "pathlib.Path",
  "sys",
  "typing.Any",
  "typing.Dict",
  "typing.List",
  "typing.Optional",
  "typing.Tuple"]

def sourcePathDependencies : List SourcePathDependency := [
  { file := "scripts/extract_cauchy_data.py", name := "DEFAULT_CAUCHY_INPUT", path := "artifacts/cauchy_conditions_input.json", role := "artifact", line := 17 },
  { file := "scripts/extract_cauchy_data.py", name := "DEFAULT_CAUCHY_OUT", path := "artifacts/cauchy_conditions_extracted.json", role := "artifact", line := 18 },
  { file := "scripts/riemann_mapping_bridge.py", name := "DEFAULT_MAPPING_SPECTRUM", path := "artifacts/riemann_mapping_spectrum.json", role := "artifact", line := 16 },
  { file := "scripts/riemann_mapping_bridge.py", name := "DEFAULT_CLOSURE_CERT", path := "artifacts/riemann_mapping_closure_cert.json", role := "artifact", line := 17 },
  { file := "scripts/analytic_continuation_closure.py", name := "DEFAULT_BRIDGE_INPUT", path := "artifacts/analytic_continuation_bridge_input.json", role := "artifact", line := 18 },
  { file := "scripts/analytic_continuation_closure.py", name := "DEFAULT_BRIDGE_OUT", path := "artifacts/analytic_continuation_bridge_output.json", role := "artifact", line := 19 },
  { file := "scripts/value_distribution_guard.py", name := "DEFAULT_GUARD_INPUT", path := "artifacts/value_distribution_guard_input.json", role := "artifact", line := 17 },
  { file := "scripts/value_distribution_guard.py", name := "DEFAULT_GUARD_REPORT", path := "artifacts/value_distribution_guard_report.json", role := "artifact", line := 18 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_REGISTRY", path := "artifacts/constants_registry.json", role := "artifact", line := 16 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_MANIFEST", path := "repro/repro_manifest.json", role := "repro", line := 17 }
]

def sourceImportDependencyCount : Nat := 54
def sourceRuntimeModuleCount : Nat := 15
def sourcePathDependencyCount : Nat := 10

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 54 := by
  rfl

theorem source_runtime_module_count_checked : sourceRuntimeModules.length = 15 := by
  rfl

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 10 := by
  rfl

end AbstractComputationalComplexityMathematicalProgrammingFoundationCanonicalLaneLean
end HautevilleHouse