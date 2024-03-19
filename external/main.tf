module "cloudflare" {
  source                = "./modules/cloudflare"
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_api_token    = var.cloudflare_api_token
}

module "zerotier" {
  source                 = "./modules/zerotier"
  zerotier_central_token = var.zerotier_central_token
  bridged_routes = [
    "10.147.17.224/28"
  ]
}

module "ntfy" {
  source = "./modules/ntfy"
  auth   = var.ntfy
}
