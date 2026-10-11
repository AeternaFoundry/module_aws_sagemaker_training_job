output "sagemaker_training_jobs_algorithm_specification" {
  description = "Map of algorithm_specification values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.algorithm_specification if v.algorithm_specification != null && length(v.algorithm_specification) > 0 }
}
output "sagemaker_training_jobs_arn" {
  description = "Map of arn values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "sagemaker_training_jobs_checkpoint_config" {
  description = "Map of checkpoint_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.checkpoint_config if v.checkpoint_config != null && length(v.checkpoint_config) > 0 }
}
output "sagemaker_training_jobs_debug_hook_config" {
  description = "Map of debug_hook_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.debug_hook_config if v.debug_hook_config != null && length(v.debug_hook_config) > 0 }
}
output "sagemaker_training_jobs_debug_rule_configurations" {
  description = "Map of debug_rule_configurations values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.debug_rule_configurations if v.debug_rule_configurations != null && length(v.debug_rule_configurations) > 0 }
}
output "sagemaker_training_jobs_delete_model_packages_on_destroy" {
  description = "Map of delete_model_packages_on_destroy values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.delete_model_packages_on_destroy if v.delete_model_packages_on_destroy != null }
}
output "sagemaker_training_jobs_delete_vpc_enis_on_destroy" {
  description = "Map of delete_vpc_enis_on_destroy values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.delete_vpc_enis_on_destroy if v.delete_vpc_enis_on_destroy != null }
}
output "sagemaker_training_jobs_enable_inter_container_traffic_encryption" {
  description = "Map of enable_inter_container_traffic_encryption values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.enable_inter_container_traffic_encryption if v.enable_inter_container_traffic_encryption != null }
}
output "sagemaker_training_jobs_enable_managed_spot_training" {
  description = "Map of enable_managed_spot_training values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.enable_managed_spot_training if v.enable_managed_spot_training != null }
}
output "sagemaker_training_jobs_enable_network_isolation" {
  description = "Map of enable_network_isolation values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.enable_network_isolation if v.enable_network_isolation != null }
}
output "sagemaker_training_jobs_environment" {
  description = "Map of environment values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "sagemaker_training_jobs_experiment_config" {
  description = "Map of experiment_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.experiment_config if v.experiment_config != null && length(v.experiment_config) > 0 }
}
output "sagemaker_training_jobs_hyper_parameters" {
  description = "Map of hyper_parameters values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.hyper_parameters if v.hyper_parameters != null && length(v.hyper_parameters) > 0 }
}
output "sagemaker_training_jobs_infra_check_config" {
  description = "Map of infra_check_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.infra_check_config if v.infra_check_config != null && length(v.infra_check_config) > 0 }
}
output "sagemaker_training_jobs_input_data_config" {
  description = "Map of input_data_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.input_data_config if v.input_data_config != null && length(v.input_data_config) > 0 }
}
output "sagemaker_training_jobs_mlflow_config" {
  description = "Map of mlflow_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.mlflow_config if v.mlflow_config != null && length(v.mlflow_config) > 0 }
}
output "sagemaker_training_jobs_model_package_config" {
  description = "Map of model_package_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.model_package_config if v.model_package_config != null && length(v.model_package_config) > 0 }
}
output "sagemaker_training_jobs_output_data_config" {
  description = "Map of output_data_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.output_data_config if v.output_data_config != null && length(v.output_data_config) > 0 }
}
output "sagemaker_training_jobs_profiler_config" {
  description = "Map of profiler_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.profiler_config if v.profiler_config != null && length(v.profiler_config) > 0 }
}
output "sagemaker_training_jobs_profiler_rule_configurations" {
  description = "Map of profiler_rule_configurations values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.profiler_rule_configurations if v.profiler_rule_configurations != null && length(v.profiler_rule_configurations) > 0 }
}
output "sagemaker_training_jobs_region" {
  description = "Map of region values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "sagemaker_training_jobs_remote_debug_config" {
  description = "Map of remote_debug_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.remote_debug_config if v.remote_debug_config != null && length(v.remote_debug_config) > 0 }
}
output "sagemaker_training_jobs_resource_config" {
  description = "Map of resource_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.resource_config if v.resource_config != null && length(v.resource_config) > 0 }
}
output "sagemaker_training_jobs_retry_strategy" {
  description = "Map of retry_strategy values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.retry_strategy if v.retry_strategy != null && length(v.retry_strategy) > 0 }
}
output "sagemaker_training_jobs_role_arn" {
  description = "Map of role_arn values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "sagemaker_training_jobs_serverless_job_config" {
  description = "Map of serverless_job_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.serverless_job_config if v.serverless_job_config != null && length(v.serverless_job_config) > 0 }
}
output "sagemaker_training_jobs_session_chaining_config" {
  description = "Map of session_chaining_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.session_chaining_config if v.session_chaining_config != null && length(v.session_chaining_config) > 0 }
}
output "sagemaker_training_jobs_stopping_condition" {
  description = "Map of stopping_condition values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.stopping_condition if v.stopping_condition != null && length(v.stopping_condition) > 0 }
}
output "sagemaker_training_jobs_tags" {
  description = "Map of tags values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "sagemaker_training_jobs_tags_all" {
  description = "Map of tags_all values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "sagemaker_training_jobs_tensor_board_output_config" {
  description = "Map of tensor_board_output_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.tensor_board_output_config if v.tensor_board_output_config != null && length(v.tensor_board_output_config) > 0 }
}
output "sagemaker_training_jobs_training_job_name" {
  description = "Map of training_job_name values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.training_job_name if v.training_job_name != null && length(v.training_job_name) > 0 }
}
output "sagemaker_training_jobs_vpc_config" {
  description = "Map of vpc_config values across all sagemaker_training_jobs, keyed the same as var.sagemaker_training_jobs"
  value       = { for k, v in aws_sagemaker_training_job.sagemaker_training_jobs : k => v.vpc_config if v.vpc_config != null && length(v.vpc_config) > 0 }
}

