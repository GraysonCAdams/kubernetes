# https://github.com/MoJo2600/pihole-kubernetes/tree/master/charts/pihole

resource "helm_release" "pihole" {
  name       = "pihole"
  repository = "https://mojo2600.github.io/pihole-kubernetes/"
  chart      = "pihole"
  version    = "1.7.19"
  namespace  = "pihole"
  depends_on = [kubernetes_namespace.pihole]
  values = [
    templatefile("${path.module}/pihole.yaml.tmpl",
      {
        nfs_storageclass : var.nfs_storageclass,
        metallb_pool_name : var.metallb_lan_pool_name,
        pihole_metallb_ip : var.pihole_metallb_ip,
        pihole_fqdn : var.pihole_fqdn,
        pihole_password : var.pihole_password,
        dns_entries : concat(var.local_dns_entries, [
          {
            "host" : var.rancher_fqdn,
            "ip" : var.reverse_proxy_ip
          },
          {
            "host" : var.pihole_fqdn,
            "ip" : var.pihole_metallb_ip
          },
          {
            "host" : var.docker_registry_fqdn,
            "ip" : var.docker_metallb_ip
          },
          {
            "host" : var.postgres_fqdn,
            "ip" : var.postgres_metallb_ip
          },
          {
            "host" : var.privatebin_fqdn,
            "ip" : var.reverse_proxy_ip
          },
          {
            "host" : var.chartsmuseum_fqdn,
            "ip" : var.reverse_proxy_ip
          }
        ])
      }
    )
  ]
}
