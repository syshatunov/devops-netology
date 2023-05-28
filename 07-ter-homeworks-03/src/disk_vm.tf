resource "yandex_compute_disk" "disk" {
  count = 3
  name  = "additional-disk-${count.index}"
  type  = "network-ssd"
  zone  = var.default_zone
  size  = 1
}


resource "yandex_compute_instance" "disk-vm" {

  depends_on = [yandex_compute_disk.disk]

  name        = "netology-disk-vm"
  platform_id = "standard-v1"

  resources {
    cores         = 2
    memory        = 1
    core_fraction = 5
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
      type     = "network-ssd"
      size     = 5
    }
  }
  
  dynamic "secondary_disk" {
    for_each = toset(yandex_compute_disk.disk[*].id)
    content {
      disk_id     = secondary_disk.key
      auto_delete = true
    }
  }

  metadata = {
    ssh-keys     = local.vms_ssh_root_key
  }

  scheduling_policy { preemptible = true }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }
  allow_stopping_for_update = true

}
