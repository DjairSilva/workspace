#Configura o provider
provider "google" {
  credentials = file("/vagrant/turma03-infraagil-40-e28482c636cf.json")
 project     = "turma03-infraagil-40"
  region      = "us-central"
}
 # Cria uma VM no Google Cloud
 resource "google_compute_instance" "helloworld" {
 name         = "estagiario"
 machine_type = var.f_m
 zone         = var.GCP_Zone

  #Defini a Imagem da VM
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20191113"
   }
 }

  # Habilita rede para a VM com um IP público
  network_interface {
    network = "default"
    access_config {
   }
 }
}
