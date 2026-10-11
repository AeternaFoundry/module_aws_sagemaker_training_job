variable "sagemaker_training_jobs" {
  description = <<EOT
Map of sagemaker_training_jobs, attributes below
Required:
    - role_arn
    - training_job_name
Optional:
    - delete_model_packages_on_destroy
    - delete_vpc_enis_on_destroy
    - enable_inter_container_traffic_encryption
    - enable_managed_spot_training
    - enable_network_isolation
    - environment
    - hyper_parameters
    - region
    - tags
    - algorithm_specification (block):
        - algorithm_name (optional)
        - container_arguments (optional)
        - container_entrypoint (optional)
        - enable_sagemaker_metrics_time_series (optional)
        - metric_definitions (optional, block):
            - name (required)
            - regex (required)
        - training_image (optional)
        - training_image_config (optional, block):
            - training_repository_access_mode (optional)
            - training_repository_auth_config (optional, block):
                - training_repository_credentials_provider_arn (optional)
        - training_input_mode (optional)
    - checkpoint_config (block):
        - local_path (optional)
        - s3_uri (required)
    - debug_hook_config (block):
        - collection_configurations (optional, block):
            - collection_name (optional)
            - collection_parameters (optional)
        - hook_parameters (optional)
        - local_path (optional)
        - s3_output_path (required)
    - debug_rule_configurations (block):
        - instance_type (optional)
        - local_path (optional)
        - rule_configuration_name (required)
        - rule_evaluator_image (required)
        - rule_parameters (optional)
        - s3_output_path (optional)
        - volume_size_in_gb (optional)
    - experiment_config (block):
        - experiment_name (optional)
        - run_name (optional)
        - trial_component_display_name (optional)
        - trial_name (optional)
    - infra_check_config (block):
        - enable_infra_check (optional)
    - input_data_config (block):
        - channel_name (required)
        - compression_type (optional)
        - content_type (optional)
        - data_source (optional, block):
            - file_system_data_source (optional, block):
                - directory_path (required)
                - file_system_access_mode (required)
                - file_system_id (required)
                - file_system_type (required)
            - s3_data_source (optional, block):
                - attribute_names (optional)
                - hub_access_config (optional, block):
                    - hub_content_arn (required)
                - instance_group_names (optional)
                - model_access_config (optional, block):
                    - accept_eula (required)
                - s3_data_distribution_type (optional)
                - s3_data_type (required)
                - s3_uri (required)
        - input_mode (optional)
        - record_wrapper_type (optional)
        - shuffle_config (optional, block):
            - seed (optional)
    - mlflow_config (block):
        - mlflow_experiment_name (optional)
        - mlflow_resource_arn (required)
        - mlflow_run_name (optional)
    - model_package_config (block):
        - model_package_group_arn (required)
        - source_model_package_arn (optional)
    - output_data_config (block):
        - compression_type (optional)
        - kms_key_id (optional)
        - s3_output_path (required)
    - profiler_config (block):
        - disable_profiler (optional)
        - profiling_interval_in_milliseconds (optional)
        - profiling_parameters (optional)
        - s3_output_path (optional)
    - profiler_rule_configurations (block):
        - instance_type (optional)
        - local_path (optional)
        - rule_configuration_name (required)
        - rule_evaluator_image (required)
        - rule_parameters (optional)
        - s3_output_path (optional)
        - volume_size_in_gb (optional)
    - remote_debug_config (block):
        - enable_remote_debug (optional)
    - resource_config (block):
        - instance_count (optional)
        - instance_groups (optional, block):
            - instance_count (optional)
            - instance_group_name (optional)
            - instance_type (optional)
        - instance_placement_config (optional, block):
            - enable_multiple_jobs (optional)
            - placement_specifications (optional, block):
                - instance_count (optional)
                - ultra_server_id (optional)
        - instance_type (optional)
        - keep_alive_period_in_seconds (optional)
        - training_plan_arn (optional)
        - volume_kms_key_id (optional)
        - volume_size_in_gb (optional)
    - retry_strategy (block):
        - maximum_retry_attempts (required)
    - serverless_job_config (block):
        - accept_eula (optional)
        - base_model_arn (required)
        - customization_technique (optional)
        - evaluation_type (optional)
        - evaluator_arn (optional)
        - job_type (required)
        - peft (optional)
    - session_chaining_config (block):
        - enable_session_tag_chaining (optional)
    - stopping_condition (block):
        - max_pending_time_in_seconds (optional)
        - max_runtime_in_seconds (optional)
        - max_wait_time_in_seconds (optional)
    - tensor_board_output_config (block):
        - local_path (optional)
        - s3_output_path (required)
    - vpc_config (block):
        - security_group_ids (required)
        - subnets (required)
EOT

  type = map(object({
    role_arn                                  = string
    training_job_name                         = string
    delete_model_packages_on_destroy          = optional(bool)
    delete_vpc_enis_on_destroy                = optional(bool)
    enable_inter_container_traffic_encryption = optional(bool)
    enable_managed_spot_training              = optional(bool)
    enable_network_isolation                  = optional(bool)
    environment                               = optional(map(string))
    hyper_parameters                          = optional(map(string))
    region                                    = optional(string)
    tags                                      = optional(map(string))
    algorithm_specification = optional(list(object({
      algorithm_name                       = optional(string)
      container_arguments                  = optional(list(string))
      container_entrypoint                 = optional(list(string))
      enable_sagemaker_metrics_time_series = optional(bool)
      metric_definitions = optional(list(object({
        name  = string
        regex = string
      })))
      training_image = optional(string)
      training_image_config = optional(list(object({
        training_repository_access_mode = optional(string)
        training_repository_auth_config = optional(list(object({
          training_repository_credentials_provider_arn = optional(string)
        })))
      })))
      training_input_mode = optional(string)
    })))
    stopping_condition = optional(list(object({
      max_pending_time_in_seconds = optional(number)
      max_runtime_in_seconds      = optional(number)
      max_wait_time_in_seconds    = optional(number)
    })))
    session_chaining_config = optional(list(object({
      enable_session_tag_chaining = optional(bool)
    })))
    serverless_job_config = optional(list(object({
      accept_eula             = optional(bool)
      base_model_arn          = string
      customization_technique = optional(string)
      evaluation_type         = optional(string)
      evaluator_arn           = optional(string)
      job_type                = string
      peft                    = optional(string)
    })))
    retry_strategy = optional(list(object({
      maximum_retry_attempts = number
    })))
    resource_config = optional(list(object({
      instance_count = optional(number)
      instance_groups = optional(list(object({
        instance_count      = optional(number)
        instance_group_name = optional(string)
        instance_type       = optional(string)
      })))
      instance_placement_config = optional(list(object({
        enable_multiple_jobs = optional(bool)
        placement_specifications = optional(list(object({
          instance_count  = optional(number)
          ultra_server_id = optional(string)
        })))
      })))
      instance_type                = optional(string)
      keep_alive_period_in_seconds = optional(number)
      training_plan_arn            = optional(string)
      volume_kms_key_id            = optional(string)
      volume_size_in_gb            = optional(number)
    })))
    remote_debug_config = optional(list(object({
      enable_remote_debug = optional(bool)
    })))
    profiler_rule_configurations = optional(list(object({
      instance_type           = optional(string)
      local_path              = optional(string)
      rule_configuration_name = string
      rule_evaluator_image    = string
      rule_parameters         = optional(map(string))
      s3_output_path          = optional(string)
      volume_size_in_gb       = optional(number)
    })))
    profiler_config = optional(list(object({
      disable_profiler                   = optional(bool)
      profiling_interval_in_milliseconds = optional(number)
      profiling_parameters               = optional(map(string))
      s3_output_path                     = optional(string)
    })))
    output_data_config = optional(list(object({
      compression_type = optional(string)
      kms_key_id       = optional(string)
      s3_output_path   = string
    })))
    model_package_config = optional(list(object({
      model_package_group_arn  = string
      source_model_package_arn = optional(string)
    })))
    mlflow_config = optional(list(object({
      mlflow_experiment_name = optional(string)
      mlflow_resource_arn    = string
      mlflow_run_name        = optional(string)
    })))
    input_data_config = optional(list(object({
      channel_name     = string
      compression_type = optional(string)
      content_type     = optional(string)
      data_source = optional(list(object({
        file_system_data_source = optional(list(object({
          directory_path          = string
          file_system_access_mode = string
          file_system_id          = string
          file_system_type        = string
        })))
        s3_data_source = optional(list(object({
          attribute_names = optional(list(string))
          hub_access_config = optional(list(object({
            hub_content_arn = string
          })))
          instance_group_names = optional(list(string))
          model_access_config = optional(list(object({
            accept_eula = bool
          })))
          s3_data_distribution_type = optional(string)
          s3_data_type              = string
          s3_uri                    = string
        })))
      })))
      input_mode          = optional(string)
      record_wrapper_type = optional(string)
      shuffle_config = optional(list(object({
        seed = optional(number)
      })))
    })))
    infra_check_config = optional(list(object({
      enable_infra_check = optional(bool)
    })))
    experiment_config = optional(list(object({
      experiment_name              = optional(string)
      run_name                     = optional(string)
      trial_component_display_name = optional(string)
      trial_name                   = optional(string)
    })))
    debug_rule_configurations = optional(list(object({
      instance_type           = optional(string)
      local_path              = optional(string)
      rule_configuration_name = string
      rule_evaluator_image    = string
      rule_parameters         = optional(map(string))
      s3_output_path          = optional(string)
      volume_size_in_gb       = optional(number)
    })))
    debug_hook_config = optional(list(object({
      collection_configurations = optional(list(object({
        collection_name       = optional(string)
        collection_parameters = optional(map(string))
      })))
      hook_parameters = optional(map(string))
      local_path      = optional(string)
      s3_output_path  = string
    })))
    checkpoint_config = optional(list(object({
      local_path = optional(string)
      s3_uri     = string
    })))
    tensor_board_output_config = optional(list(object({
      local_path     = optional(string)
      s3_output_path = string
    })))
    vpc_config = optional(list(object({
      security_group_ids = list(string)
      subnets            = list(string)
    })))
  }))
}

