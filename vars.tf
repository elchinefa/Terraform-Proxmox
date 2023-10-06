variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC9E1+M5gwUJC6EisyfPDQJqelxls/U8PiFEwMCeKQk43it9GpzeDfxWY4otf+YlN+9+r1N2GYG4xI0nh+gstO8DN9KdeCZzMR2FB8u84jRMzuGUEuR0wvxGOOSLpU/u2nqJpW7DW5IVnAnffMhiEG4KDJ5a3giSCpfyThIEQoFllYH4ojddDH6HXZ/yYzJ0ILFhamGCelS0q36TvFDMY5A2cVwfT2Ye+wsl4XxQHGN6xsX+G9MQ54hDUKO8TN62/sqP5nfFNxU0heKDZlzUK+hCTE0sRnVEDCMakd0X5t4+rpTPK0XFmkYI5NB2OV1/gngxous8Bu7V02lXHu6K1Xq3dK/4rHzxjb2aHW9wHOfO3Y5RoGj8/pImDqdYbVAUtcACQJe6efe/GjqMJk2AoJB45M9cpUUxPGQfKudtTFLkY/1kVQN+YKFlzfFymQcglbL9emqFkS/Q1KTAG/W0DyG4dFGGNnuqlUrDlymZtO268Lm//hjmTX9qUvbWeh3eCM= root@ansible-controller"
}


variable "proxmox_host" {
    default = "proxmox"
}

variable "template_name" {
    default = "template-ubuntu-server"
}
