resource "yandex_compute_instance" "count-vm" {

  count       = 2
  
  name        = "netology-count-vm-${count.index}"
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