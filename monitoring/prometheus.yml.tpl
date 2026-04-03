global:
  scrape_interval: 15s
  evaluation_interval: 15s

scrape_configs:

  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'jenkins'
    metrics_path: /prometheus/
    basic_auth:
      username: 'admin'
      password: 'JENKINS_API_TOKEN'
    static_configs:
      - targets: ['JENKINS_PRIVATE_IP:8080']

  - job_name: 'node-jenkins'
    static_configs:
      - targets: ['JENKINS_PRIVATE_IP:9100']

  - job_name: 'node-app'
    static_configs:
      - targets: ['APP_PRIVATE_IP:9100']

  - job_name: 'node-monitoring'
    static_configs:
      - targets: ['MONITORING_PRIVATE_IP:9100']

  - job_name: 'zomato-app'
    static_configs:
      - targets: ['APP_PRIVATE_IP:3001']
