resource "yandex_compute_instance" "for-each-vm" {

  # Ожидание создания инстанса count-vm
  depends_on = [yandex_compute_instance.count-vm]

  for_each = { for key, val in var.resources_for_each_vm : key => val }
  name     = "netology-for-each-vm-${each.value.vm_name}"

  resources {
    cores         = each.value.cpu
    memory        = each.value.ram
    core_fraction = each.value.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu-2004-lts.image_id
      type     = "network-ssd"
      size     = each.value.disk
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