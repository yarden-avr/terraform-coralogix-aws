terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

module "cloudwatch_firehose_coralogix" {
  source                           = "github.com/coralogix/terraform-coralogix-aws//modules/firehose"
  firehose_stream                  = var.coralogix_firehose_stream_name
  privatekey                       = var.coralogix_privatekey
  include_all_namespaces           = var.include_all_namespaces
  include_metric_stream_namespaces = var.include_metric_stream_namespaces
  endpoint_region                  = var.coralogix_region
}
