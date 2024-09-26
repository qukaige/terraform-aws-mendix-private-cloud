# OperatorConfiguration
Mendix 配置的核心文件，可以通过修改此文件进行配置mendix环境
```
apiVersion: privatecloud.mendix.com/v1alpha1
kind: OperatorConfiguration
# ...
# omitted lines for brevity
# ...
spec:
  # Endpoint (Network) configuration
  endpoint:
    # Endpoint type: ingress, openshiftRoute or service
    type: ingress
    # Optional, can be omitted: Service annotations
    serviceAnnotations:
      # example: custom AWS CLB configuration
      service.beta.kubernetes.io/aws-load-balancer-backend-protocol: tcp
      service.beta.kubernetes.io/aws-load-balancer-ssl-cert: arn:aws:acm:eu-west-1:account:certificate/id
      service.beta.kubernetes.io/aws-load-balancer-ssl-ports: "443"
    # Ingress configuration: used only when type is set to ingress
    ingress:
      # Optional, can be omitted: annotations which should be applied to all Ingress Resources
      annotations:
        # default annotation: allow uploads of files up 500 MB in the NGINX Ingress Controller
        nginx.ingress.kubernetes.io/proxy-body-size: 500m
        # example: use the specified cert-manager ClusterIssuer to generate TLS certificates with Let's Encrypt
        cert-manager.io/cluster-issuer: staging-issuer
        # example: deny access to /rest-doc
        nginx.ingress.kubernetes.io/configuration-snippet: |
          location /rest-doc {
            deny all;
            return 403;
          }          
      # App URLs will be generated for subdomains of this domain, unless an app is using a custom appURL
      domain: mendix.example.com
      # Enable or disable TLS
      enableTLS: true
      # Optional: name of a kubernetes.io/tls secret containing the TLS certificate
      # This example is a template which lets cert-manager to generate a unique certificate for each app
      tlsSecretName: '{{.Name}}-tls'
      # Optional: specify the Ingress class name
      ingressClassName: alb
      # Optional, can be omitted : specify the Ingress path
      path: "/"
      # Optional, can be omitted : specify the Ingress pathType
      pathType: ImplementationSpecific
# ...
# omitted lines for brevity
# ...
```