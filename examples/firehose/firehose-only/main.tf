terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

module "cloudwatch_firehose_coralogix" {
  source                           = "../../../modules/firehose" #"github.com/coralogix/terraform-coralogix-aws//modules/firehose"
  firehose_stream                  = var.coralogix_firehose_stream_name
  privatekey                       = var.coralogix_privatekey
  enable_cloudwatch_metricstream   = false
  endpoint_region                  = var.coralogix_region
}
