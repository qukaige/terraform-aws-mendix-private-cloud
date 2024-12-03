
image:
  pullPolicy: IfNotPresent
  registry: registry.cn-beijing.aliyuncs.com
  repository: kaigequ/grafana
  sha: ""
  tag: "11.2.0"
grafana.ini:
  server:
    domain: monitoring.${hostname}
    root_url: "%(protocol)s://%(domain)s/grafana"
    serve_from_sub_path: true
persistence:
  type: pvc
  enabled: true
  size: 30Gi
  storageClassName: gp2
serviceAccount:
  create: true
  name: grafana
  namespace: grafana
  annotations:
    eks.amazonaws.com/role-arn: ${role_arn}
adminUser: admin
adminPassword: ${admin_password}
ingress:
  enabled: true
  annotations: 
    kubernetes.io/ingress.class: nginx
    nginx.ingress.kubernetes.io/ssl-redirect: "false"
  hosts:
    - "monitoring.${hostname}"
  path: "/"
  tls:
  - hosts:
    - monitoring.${hostname}
datasources:
 datasources.yaml:
   apiVersion: 1
   datasources:
   - name: Prometheus
     type: prometheus
     url: http://kube-prometheus-stack-prometheus.prometheus.svc.cluster.local:9090
     access: proxy
     isDefault: true
   - name: Loki
     type: loki
     url: http://loki-stack.loki.svc.cluster.local:3100
     access: proxy
   - name: CloudWatch
     type: cloudwatch
     access: proxy
     uid: cloudwatch
     editable: false
     jsonData:
      authType: default
      defaultRegion: ${aws_region}
dashboardProviders:
 dashboardproviders.yaml:
   apiVersion: 1
   providers:
   - name: 'default'
     orgId: 1
     folder: ''
     type: file
     disableDeletion: false
     editable: true
     options:
       path: /var/lib/grafana/dashboards/default
dashboards:
  default:
    mendix_native:
      json: |
        ${mendix_native}
    pvc_disk_space:
      json: |
        ${pvc_disk_space}
    kubernetes:
      json: |
        ${kubernetes}
    rds:
      json: |
        ${rds}
initChownData:
  enabled: true
  image:
    pullPolicy: IfNotPresent
    registry: registry.cn-beijing.aliyuncs.com
    repository: kaigequ/busybox
    sha: ""
    tag: 1.31.1
downloadDashboardsImage:
  pullPolicy: IfNotPresent
  registry: registry.cn-beijing.aliyuncs.com
  repository: kaigequ/curl
  sha: ""
  tag: 7.85.0