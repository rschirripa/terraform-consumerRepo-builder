
data "template_file" "create" {
  template = "${file("create_repo.tmpl")}"
  vars = {
    git_token = "${var.git_token}"
    new_git_repo = "${var.new_git_repo}"
    git_user = "${var.git_user}"
  }
}

data "template_file" "delete" {
  template = "${file("delete_repo.tmpl")}"
  vars = {
    git_token = "${var.git_token}"
    new_git_repo = "${var.new_git_repo}"
    git_user = "${var.git_user}"
  }
}

resource "null_resource" "github_mgmt" {
  provisioner "local-exec" {
    command = "${data.template_file.create.rendered}"
  }
  
  provisioner "local-exec"{
    when = "destroy"
    command = "${data.template_file.delete.rendered}"
    
  }
  
}

