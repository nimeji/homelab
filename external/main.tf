module "cloudflare" {
  source                = "./modules/cloudflare"
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_api_token    = var.cloudflare_api_token
}

module "zerotier" {
  source                 = "./modules/zerotier"
  zerotier_central_token = var.zerotier_central_token
  bridged_routes = [
    "10.100.0.0/24"
  ]
}

module "ntfy" {
  source = "./modules/ntfy"
  auth   = var.ntfy
}
