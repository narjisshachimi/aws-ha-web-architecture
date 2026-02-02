## Security Groups Design

### ALB Security Group (sg-alb-web)
Inbound:
- HTTP (80) from 0.0.0.0/0

Outbound:
- All traffic

### EC2 Security Group (sg-ec2-app)
Inbound:
- HTTP (80) from ALB Security Group only

Outbound:
- All traffic

### Design Principles
- No public access to EC2 instances
- Least privilege networking
- ALB acts as the single entry point

