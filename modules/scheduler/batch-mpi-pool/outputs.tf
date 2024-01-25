/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "instructions" {
  description = "Instructions for submitting the Batch job."
  value       = <<-EOT

  This deployment has created a Batch Node Pool via the Batch Job projects/${var.project_id}/locations/${var.region}/jobs/${local.make_pool_job_id}.
  After this initial pool-configuration job has completed, you can submit additional jobs to Batch to be executed on the pool.

  A configuration for a simple MPI job that runs "hostname" once on each node of the pool is included in batch-run-mpi-workload.json.
  You can submit a job with this configuration with gcloud.

      gcloud batch jobs submit --project=${var.project_id} --location=${var.region} --config=batch-run-mpi-workload.json

  EOT
}
