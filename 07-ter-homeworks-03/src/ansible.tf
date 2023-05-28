resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/hosts.tftpl",
   { webservers = [
       yandex_compute_instance.count-vm[0],
       yandex_compute_instance.count-vm[1],
       yandex_compute_instance.for-each-vm[0],
       yandex_compute_instance.for-each-vm[1],
       yandex_compute_instance.disk-vm]
   }
  )
  filename = "${abspath(path.module)}/hosts.cfg"
}
