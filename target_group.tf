resource "aws_lb_target_group" "tg" {
    name = "TG-${var.projectName}"
    port = 8080
    target_type = "instance"
    protocol = "HTTP"

    vpc_id = var.vpcId

    health_check {
        path = "/actuator/health"
        port = 8080
        matcher = "200"
    }
}

resource "aws_lb_target_group_attachment" "attach" {
    target_group_arn = aws_lb_target_group.tg.arn
    target_id = data.aws_instance.ec2.id
    port = 8080
}