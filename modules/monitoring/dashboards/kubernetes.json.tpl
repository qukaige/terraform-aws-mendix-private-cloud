{
  "annotations": {
    "list": [
      {
        "$$hashKey": "object:247",
        "builtIn": 1,
        "datasource": {
          "type": "datasource",
          "uid": "grafana"
        },
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "target": {
          "limit": 100,
          "matchAny": false,
          "tags": [],
          "type": "dashboard"
        },
        "type": "dashboard"
      }
    ]
  },
  "description": "【中文版本】2024.05.13更新，kubernetes资源全面展示！包含K8S整体资源总览、微服务资源明细、Pod资源明细及K8S网络带宽，优化重要指标展示。https://grafana.com/orgs/starsliao/dashboards",
  "editable": true,
  "fiscalYearStartMonth": 0,
  "gnetId": 13105,
  "graphTooltip": 0,
  "id": 5,
  "links": [
    {
      "icon": "bolt",
      "tags": [],
      "targetBlank": true,
      "title": "Update",
      "tooltip": "查看更多仪表板",
      "type": "link",
      "url": "https://grafana.com/orgs/starsliao/dashboards"
    },
    {
      "$$hashKey": "object:831",
      "icon": "question",
      "tags": [
        "node_exporter"
      ],
      "targetBlank": true,
      "title": "GitHub",
      "tooltip": "查看更多仪表板",
      "type": "link",
      "url": "https://github.com/starsliao"
    }
  ],
  "liveNow": false,
  "panels": [
    {
      "collapsed": false,
      "datasource": {
        "type": "prometheus",
        "uid": "WAYOn0FGz"
      },
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 54,
      "panels": [],
      "title": "节点资源总览：所选节点:【$Node】",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [],
          "max": 1,
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "orange",
                "value": 0.8
              },
              {
                "color": "red",
                "value": 0.9
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 0,
        "y": 1
      },
      "id": 44,
      "options": {
        "displayMode": "basic",
        "maxVizHeight": 300,
        "minVizHeight": 10,
        "minVizWidth": 0,
        "namePlacement": "auto",
        "orientation": "vertical",
        "reduceOptions": {
          "calcs": [
            "last"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": false,
        "sizing": "auto",
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"}) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})",
          "format": "time_series",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "内存使用率",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"}) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})",
          "format": "time_series",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "内存请求率",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"}) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})",
          "format": "time_series",
          "hide": false,
          "instant": true,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "内存限制率",
          "refId": "B",
          "step": 10
        }
      ],
      "title": "节点内存比例",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [],
          "max": 1,
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "orange",
                "value": 0.7
              },
              {
                "color": "red",
                "value": 0.9
              }
            ]
          },
          "unit": "percentunit"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 4,
        "y": 1
      },
      "id": 45,
      "options": {
        "displayMode": "basic",
        "maxVizHeight": 300,
        "minVizHeight": 10,
        "minVizWidth": 0,
        "namePlacement": "auto",
        "orientation": "vertical",
        "reduceOptions": {
          "calcs": [
            "last"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": false,
        "sizing": "auto",
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum (irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"}[2m])) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})",
          "format": "time_series",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "CPU使用率",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"}) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})",
          "format": "time_series",
          "instant": true,
          "interval": "",
          "legendFormat": "CPU请求率",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"}) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})",
          "format": "time_series",
          "instant": true,
          "interval": "",
          "legendFormat": "CPU限制率",
          "refId": "B"
        }
      ],
      "title": "节点CPU比例",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "description": "集群节点数，节点POD数，节点POD上限",
      "fieldConfig": {
        "defaults": {
          "mappings": [],
          "max": 100,
          "min": 1,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "orange",
                "value": 1000
              },
              {
                "color": "red",
                "value": 2000
              }
            ]
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 8,
        "y": 1
      },
      "id": 74,
      "options": {
        "displayMode": "basic",
        "maxVizHeight": 300,
        "minVizHeight": 10,
        "minVizWidth": 0,
        "namePlacement": "auto",
        "orientation": "vertical",
        "reduceOptions": {
          "calcs": [
            "last"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": false,
        "sizing": "auto",
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "expr": "count(kube_node_info{origin_prometheus=~\"$origin_prometheus\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "节点数",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "expr": "count(kube_pod_info{origin_prometheus=~\"$origin_prometheus\",created_by_kind!~\"<none>|Job\",node=~\"^$Node$\"})",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "Pod数",
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"pods\", unit=\"integer\",node=~\"^$Node$\"})",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "上限Pod",
          "refId": "C"
        }
      ],
      "title": "节点与Pod",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "align": "center",
            "cellOptions": {
              "type": "color-text"
            },
            "filterable": false,
            "inspect": false
          },
          "mappings": [],
          "noValue": "0",
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "空间"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 59
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Pod"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 21
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "SVC"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 7
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "微服务"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 4
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "配置"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 16
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "密码"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 33
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 5,
        "x": 11,
        "y": 1
      },
      "id": 51,
      "options": {
        "cellHeight": "sm",
        "footer": {
          "countRows": false,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": true
        },
        "showHeader": true,
        "sortBy": [
          {
            "desc": true,
            "displayName": "微服务"
          }
        ]
      },
      "pluginVersion": "11.2.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "expr": "count(kube_pod_info{origin_prometheus=~\"$origin_prometheus\",node=~\"^$Node$\"}) by (namespace)",
          "format": "table",
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "expr": "count(kube_service_info{origin_prometheus=~\"$origin_prometheus\"}) by(namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "expr": "count by (namespace)({__name__=~\"kube_deployment_metadata_generation|kube_daemonset_metadata_generation|kube_statefulset_metadata_generation\",origin_prometheus=~\"$origin_prometheus\"})",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "__auto",
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "expr": "count(kube_configmap_info{origin_prometheus=~\"$origin_prometheus\"}) by(namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "configmap",
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "expr": "count(kube_secret_info{origin_prometheus=~\"$origin_prometheus\"}) by(namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "secret",
          "refId": "E"
        }
      ],
      "title": "命名空间资源统计",
      "transformations": [
        {
          "id": "seriesToColumns",
          "options": {
            "byField": "namespace"
          }
        },
        {
          "id": "organize",
          "options": {
            "excludeByName": {
              "Time": true,
              "Time 1": true,
              "Time 2": true,
              "Time 3": true,
              "Time 4": true,
              "Time 5": true
            },
            "includeByName": {},
            "indexByName": {
              "Time 1": 2,
              "Time 2": 4,
              "Time 3": 6,
              "Value #A": 3,
              "Value #C": 5,
              "Value #D": 1,
              "namespace": 0
            },
            "renameByName": {
              "Time 1": "",
              "Time 2": "",
              "Value #A": "Pod",
              "Value #B": "配置",
              "Value #C": "SVC",
              "Value #D": "微服务",
              "Value #E": "密码",
              "namespace": "空间"
            }
          }
        }
      ],
      "type": "table"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "series",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 30,
            "gradientMode": "opacity",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineStyle": {
              "fill": "solid"
            },
            "lineWidth": 2,
            "pointSize": 4,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "binbps"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 8,
        "x": 16,
        "y": 1
      },
      "id": 32,
      "options": {
        "legend": {
          "calcs": [
            "max"
          ],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true,
          "width": 200
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum (irate(container_network_receive_bytes_total{origin_prometheus=~\"$origin_prometheus\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m]))*8",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "接收",
          "metric": "network",
          "range": true,
          "refId": "A",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum (irate(container_network_transmit_bytes_total{origin_prometheus=~\"$origin_prometheus\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m]))*8",
          "instant": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "发送",
          "metric": "network",
          "refId": "B",
          "step": 10
        }
      ],
      "title": "$NameSpace：网络总览（可关联节点与命名空间）",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [],
          "max": 2000000000000,
          "min": 1,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "orange",
                "value": 100000000000
              },
              {
                "color": "red",
                "value": 2000000000000
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 0,
        "y": 5
      },
      "id": 71,
      "options": {
        "displayMode": "basic",
        "maxVizHeight": 300,
        "minVizHeight": 10,
        "minVizWidth": 0,
        "namePlacement": "auto",
        "orientation": "vertical",
        "reduceOptions": {
          "calcs": [
            "last"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": false,
        "sizing": "auto",
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "总内存",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "使用量",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "请求量",
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "限制量",
          "refId": "B"
        }
      ],
      "title": "节点内存信息",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [],
          "max": 500,
          "min": 1,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "#EAB839",
                "value": 500
              },
              {
                "color": "red",
                "value": 1000
              }
            ]
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 4,
        "w": 4,
        "x": 4,
        "y": 5
      },
      "id": 72,
      "options": {
        "displayMode": "basic",
        "maxVizHeight": 300,
        "minVizHeight": 10,
        "minVizWidth": 0,
        "namePlacement": "auto",
        "orientation": "vertical",
        "reduceOptions": {
          "calcs": [
            "last"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": false,
        "sizing": "auto",
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "总核数",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",id=\"/\",node=~\"^$Node$\"}[2m]))",
          "instant": true,
          "interval": "",
          "legendFormat": "使用量",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "请求量",
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "限制量",
          "refId": "B"
        }
      ],
      "title": "节点CPU核数",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "decimals": 1,
          "mappings": [],
          "max": 8000000000000,
          "min": 1,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "#EAB839",
                "value": 5000000000000
              },
              {
                "color": "red",
                "value": 10000000000000
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "使用率"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "max"
              },
              {
                "id": "min",
                "value": 0
              },
              {
                "id": "thresholds",
                "value": {
                  "mode": "percentage",
                  "steps": [
                    {
                      "color": "green",
                      "value": null
                    },
                    {
                      "color": "orange",
                      "value": 80
                    },
                    {
                      "color": "red",
                      "value": 90
                    }
                  ]
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "总量"
            },
            "properties": [
              {
                "id": "decimals",
                "value": 0
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 4,
        "w": 3,
        "x": 8,
        "y": 5
      },
      "id": 73,
      "options": {
        "displayMode": "basic",
        "maxVizHeight": 300,
        "minVizHeight": 10,
        "minVizWidth": 0,
        "namePlacement": "auto",
        "orientation": "vertical",
        "reduceOptions": {
          "calcs": [
            "last"
          ],
          "fields": "",
          "values": false
        },
        "showUnfilled": false,
        "sizing": "auto",
        "text": {},
        "valueMode": "color"
      },
      "pluginVersion": "11.2.0",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "expr": "sum (container_fs_usage_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"}) / sum (container_fs_limit_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "使用率",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "expr": "sum (container_fs_usage_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "使用量",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "expr": "sum (container_fs_limit_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"})",
          "instant": true,
          "interval": "",
          "legendFormat": "总量",
          "refId": "B"
        }
      ],
      "title": "节点存储信息",
      "type": "bargauge"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": [
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/异常.*/"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 2,
        "w": 24,
        "x": 0,
        "y": 9
      },
      "id": 88,
      "maxPerRow": 2,
      "options": {
        "colorMode": "background",
        "graphMode": "none",
        "justifyMode": "center",
        "orientation": "auto",
        "percentChangeColorMode": "standard",
        "reduceOptions": {
          "calcs": [
            "last"
          ],
          "fields": "",
          "values": false
        },
        "showPercentChange": false,
        "text": {},
        "textMode": "auto",
        "wideLayout": true
      },
      "pluginVersion": "11.2.0",
      "repeat": "origin_prometheus",
      "repeatDirection": "v",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "count({__name__=~\"kube_deployment_metadata_generation|kube_daemonset_metadata_generation|kube_statefulset_metadata_generation\",origin_prometheus=~\"$origin_prometheus\"})",
          "hide": false,
          "instant": true,
          "legendFormat": "工作负载",
          "range": false,
          "refId": "F"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "count(kube_pod_info{origin_prometheus=~\"$origin_prometheus\"})",
          "hide": false,
          "instant": true,
          "legendFormat": "总Pod",
          "range": false,
          "refId": "E"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "count by(key,origin_prometheus)(kube_node_spec_taint{origin_prometheus=~\"$origin_prometheus\",key=~\"node.kubernetes.io.*\"})",
          "format": "time_series",
          "hide": false,
          "instant": true,
          "legendFormat": "{{key}}",
          "range": false,
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "count by(origin_prometheus)(kube_node_info{origin_prometheus=~\"$origin_prometheus\"})",
          "hide": false,
          "instant": true,
          "legendFormat": "总节点",
          "range": false,
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "count by(origin_prometheus)(kube_node_info{origin_prometheus=~\"$origin_prometheus\"}) - count by(origin_prometheus)(kube_node_spec_taint{origin_prometheus=~\"$origin_prometheus\",key!~\"node.kubernetes.io.*\"})",
          "hide": false,
          "instant": true,
          "legendFormat": "正常节点",
          "range": false,
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "count by(key,origin_prometheus)(kube_node_spec_taint{origin_prometheus=~\"$origin_prometheus\",key!~\"node.kubernetes.io.*\"})",
          "hide": false,
          "instant": true,
          "legendFormat": "{{key}}",
          "range": false,
          "refId": "A"
        }
      ],
      "transformations": [
        {
          "id": "renameByRegex",
          "options": {
            "regex": "(node.kubernetes.io/)(.*)",
            "renamePattern": "异常:$2"
          }
        }
      ],
      "type": "stat"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 15,
            "gradientMode": "opacity",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "总内存"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.lineWidth",
                "value": 2
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 5,
        "w": 8,
        "x": 0,
        "y": 11
      },
      "id": 79,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": false
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})",
          "instant": false,
          "interval": "",
          "legendFormat": "总内存",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"})",
          "instant": false,
          "interval": "",
          "legendFormat": "使用量",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"})",
          "hide": true,
          "instant": false,
          "interval": "",
          "legendFormat": "请求量",
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"})",
          "hide": true,
          "instant": false,
          "interval": "",
          "legendFormat": "限制量",
          "refId": "B"
        }
      ],
      "title": "内存使用量【$Node】",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 15,
            "gradientMode": "opacity",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "总核数"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.lineWidth",
                "value": 2
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 5,
        "w": 8,
        "x": 8,
        "y": 11
      },
      "id": 80,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": false
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})",
          "instant": false,
          "interval": "",
          "legendFormat": "总核数",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",id=\"/\",node=~\"^$Node$\"}[2m]))",
          "instant": false,
          "interval": "",
          "legendFormat": "使用量",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"})",
          "hide": true,
          "instant": false,
          "interval": "",
          "legendFormat": "请求量",
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"})",
          "hide": true,
          "instant": true,
          "interval": "",
          "legendFormat": "限制量",
          "refId": "B"
        }
      ],
      "title": "CPU使用核【$Node】",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "description": "集群节点数，节点POD数，节点POD上限",
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "series",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 15,
            "gradientMode": "opacity",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "上限Pod"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.lineWidth",
                "value": 2
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "节点数"
            },
            "properties": [
              {
                "id": "custom.axisPlacement",
                "value": "right"
              },
              {
                "id": "custom.drawStyle",
                "value": "points"
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "blue",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.pointSize",
                "value": 3
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 5,
        "w": 8,
        "x": 16,
        "y": 11
      },
      "id": 81,
      "options": {
        "legend": {
          "calcs": [],
          "displayMode": "list",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "count(kube_node_info{origin_prometheus=~\"$origin_prometheus\"})",
          "hide": false,
          "instant": false,
          "interval": "",
          "legendFormat": "节点数",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "count(kube_pod_info{origin_prometheus=~\"$origin_prometheus\",created_by_kind!~\"<none>|Job\",node=~\"^$Node$\"})",
          "hide": false,
          "instant": false,
          "interval": "",
          "legendFormat": "Pod数",
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"pods\", unit=\"integer\",node=~\"^$Node$\"})",
          "hide": false,
          "instant": false,
          "interval": "",
          "legendFormat": "上限Pod",
          "refId": "C"
        }
      ],
      "title": "Pod数与节点数【$Node】",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "percent"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/总核数.*/"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "#C4162A",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 6,
        "w": 8,
        "x": 0,
        "y": 16
      },
      "id": 75,
      "options": {
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": false
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"}[2m]))by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})by (node)*100",
          "format": "time_series",
          "hide": false,
          "instant": false,
          "interval": "",
          "legendFormat": "{{node}}",
          "refId": "I"
        }
      ],
      "title": "$Node：节点CPU明细",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 6,
        "w": 8,
        "x": 8,
        "y": 16
      },
      "id": 76,
      "options": {
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": false
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"})by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})by (node)*100",
          "format": "time_series",
          "hide": false,
          "instant": false,
          "interval": "",
          "legendFormat": "{{node}}",
          "refId": "I"
        }
      ],
      "title": "$Node：节点内存明细",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "series",
            "axisLabel": "←流入/流出→",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "barWidthFactor": 0.6,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green",
                "value": null
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "binbps"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/流入.*/"
            },
            "properties": [
              {
                "id": "custom.transform",
                "value": "negative-Y"
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 6,
        "w": 8,
        "x": 16,
        "y": 16
      },
      "id": 78,
      "options": {
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": false
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (irate(container_network_receive_bytes_total{origin_prometheus=~\"$origin_prometheus\",node=~\"^$Node$\"}[2m]))by (node) *8",
          "format": "time_series",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "流入:{{node}}",
          "metric": "network",
          "refId": "A",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": true,
          "expr": "sum (irate(container_network_transmit_bytes_total{origin_prometheus=~\"$origin_prometheus\",node=~\"^$Node$\"}[2m]))by (node) *8",
          "instant": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "流出:{{node}}",
          "metric": "network",
          "refId": "B",
          "step": 10
        }
      ],
      "title": "$Node：节点网络总览",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "center",
            "cellOptions": {
              "type": "auto"
            },
            "filterable": false,
            "inspect": false
          },
          "mappings": [],
          "max": 1,
          "min": 0,
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          }
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "CPU限制"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 76
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "内存使用"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 71
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "内存限制"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 74
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "磁盘使用"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 74
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": ".*%"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "mode": "gradient",
                  "type": "color-background"
                }
              },
              {
                "id": "color",
                "value": {
                  "mode": "continuous-GrYlRd"
                }
              },
              {
                "id": "custom.width",
                "value": 85
              },
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "decimals",
                "value": 0
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "(内存使用|内存总|内存请求|内存限制|磁盘使用|磁盘总)"
            },
            "properties": [
              {
                "id": "unit",
                "value": "bytes"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "节点"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 96
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "内存请求"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 76
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "CPU请求"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 75
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "(CPU总|内存总|磁盘总|Pod上限)"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "mode": "gradient",
                  "type": "color-background"
                }
              },
              {
                "id": "thresholds",
                "value": {
                  "mode": "absolute",
                  "steps": [
                    {
                      "color": "blue"
                    }
                  ]
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Pod上限"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 66
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "CPU核使用$|内存使用$|磁盘使用$|Pod数"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "color-text"
                }
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "orange",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/.*总/"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "mode": "gradient",
                  "type": "color-background"
                }
              },
              {
                "id": "custom.cellOptions",
                "value": {
                  "mode": "gradient",
                  "type": "color-background"
                }
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "blue",
                  "mode": "fixed"
                }
              },
              {
                "id": "decimals",
                "value": 0
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Pod数"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 58
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "CPU核总"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 69
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "内存总"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 75
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "磁盘总"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 74
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "CPU核使用"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 74
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "内存使用%"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 102
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 11,
        "w": 24,
        "x": 0,
        "y": 22
      },
      "id": 52,
      "options": {
        "cellHeight": "sm",
        "footer": {
          "countRows": false,
          "enablePagination": true,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true,
        "sortBy": [
          {
            "desc": true,
            "displayName": "内存使用%"
          }
        ]
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "count(kube_pod_info{origin_prometheus=~\"$origin_prometheus\",created_by_kind!~\"<none>|Job\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "pod数",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "kube_node_status_condition{origin_prometheus=~\"$origin_prometheus\",status=\"true\",node=~\"^$Node$\"}  == 1",
          "format": "table",
          "hide": true,
          "instant": true,
          "interval": "",
          "legendFormat": "状态",
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"}[2m])) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "I"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"} - 0",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "E"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "F"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "J"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"}) by (node) - 0",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "G"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "H"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (container_fs_usage_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "K"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (container_fs_limit_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"}) by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "L"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"})by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "内存使用%",
          "refId": "M"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"})by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "内存请求%",
          "refId": "N"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",node=~\"^$Node$\"})by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\", node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "内存限制%",
          "refId": "O"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container!=\"\",node=~\"^$Node$\"}[2m]))by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "CPU使用%",
          "refId": "P"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"})by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "CPU请求%",
          "refId": "Q"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",node=~\"^$Node$\"})by (node) / sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\", node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "内存限制%",
          "refId": "R"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (container_fs_usage_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"})by (node) / sum (container_fs_limit_bytes{origin_prometheus=~\"$origin_prometheus\",device=~\"^/dev/.*$\",id=\"/\",node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "磁盘使用%",
          "refId": "S"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_node_status_allocatable{origin_prometheus=~\"$origin_prometheus\",resource=\"pods\", unit=\"integer\",node=~\"^$Node$\"})by (node)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "Pod上限",
          "refId": "T"
        }
      ],
      "title": "$Node：节点信息明细",
      "transformations": [
        {
          "id": "merge",
          "options": {}
        },
        {
          "id": "organize",
          "options": {
            "excludeByName": {
              "Time": true,
              "Time 1": true,
              "Time 10": true,
              "Time 11": true,
              "Time 12": true,
              "Time 13": true,
              "Time 14": true,
              "Time 15": true,
              "Time 16": true,
              "Time 17": true,
              "Time 18": true,
              "Time 19": true,
              "Time 2": true,
              "Time 20": true,
              "Time 3": true,
              "Time 4": true,
              "Time 5": true,
              "Time 6": true,
              "Time 7": true,
              "Time 8": true,
              "Time 9": true,
              "Value #B": true,
              "Value #E": false,
              "Value #F": false,
              "__name__": true,
              "app_kubernetes_io_name": true,
              "app_kubernetes_io_name 1": true,
              "app_kubernetes_io_name 2": true,
              "app_kubernetes_io_name 3": true,
              "app_kubernetes_io_version": true,
              "app_kubernetes_io_version 1": true,
              "app_kubernetes_io_version 2": true,
              "app_kubernetes_io_version 3": true,
              "condition": true,
              "instance": true,
              "instance 1": true,
              "instance 2": true,
              "instance 3": true,
              "job": true,
              "job 1": true,
              "job 2": true,
              "job 3": true,
              "k8s_namespace": true,
              "k8s_namespace 1": true,
              "k8s_namespace 2": true,
              "k8s_namespace 3": true,
              "k8s_sname": true,
              "k8s_sname 1": true,
              "k8s_sname 2": true,
              "k8s_sname 3": true,
              "origin_prometheus": true,
              "origin_prometheus 1": true,
              "origin_prometheus 2": true,
              "origin_prometheus 3": true,
              "resource": true,
              "status": true,
              "unit": true
            },
            "includeByName": {},
            "indexByName": {
              "Time": 22,
              "Value #A": 2,
              "Value #C": 6,
              "Value #D": 8,
              "Value #E": 16,
              "Value #F": 17,
              "Value #G": 18,
              "Value #H": 19,
              "Value #I": 7,
              "Value #J": 9,
              "Value #K": 11,
              "Value #L": 10,
              "Value #M": 4,
              "Value #N": 13,
              "Value #O": 15,
              "Value #P": 3,
              "Value #Q": 12,
              "Value #R": 14,
              "Value #S": 5,
              "Value #T": 1,
              "instance": 23,
              "job": 24,
              "node": 0,
              "origin_prometheus": 25,
              "resource": 20,
              "unit": 21
            },
            "renameByName": {
              "Value #A": "Pod数",
              "Value #C": "CPU核总",
              "Value #D": "内存总",
              "Value #E": "CPU请求",
              "Value #F": "CPU限制",
              "Value #G": "内存请求",
              "Value #H": "内存限制",
              "Value #I": "CPU核使用",
              "Value #J": "内存使用",
              "Value #K": "磁盘使用",
              "Value #L": "磁盘总",
              "Value #M": "内存使用%",
              "Value #N": "内存请求%",
              "Value #O": "内存限制%",
              "Value #P": "CPU使用%",
              "Value #Q": "CPU请求%",
              "Value #R": "CPU限制%",
              "Value #S": "磁盘使用%",
              "Value #T": "Pod上限",
              "condition": "状态",
              "node": "节点"
            }
          }
        },
        {
          "id": "filterFieldsByName",
          "options": {}
        }
      ],
      "type": "table"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "align": "center",
            "cellOptions": {
              "type": "color-background"
            },
            "inspect": false
          },
          "decimals": 0,
          "links": [],
          "mappings": [
            {
              "options": {
                "0": {
                  "color": "red",
                  "index": 0
                }
              },
              "type": "value"
            },
            {
              "options": {
                "match": "null",
                "result": {
                  "color": "red",
                  "index": 1
                }
              },
              "type": "special"
            }
          ],
          "noValue": "0",
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "使用率"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percent"
              },
              {
                "id": "custom.width",
                "value": 54
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "purple",
                  "mode": "fixed"
                }
              },
              {
                "id": "decimals"
              },
              {
                "id": "mappings",
                "value": [
                  {
                    "options": {
                      "from": 75,
                      "result": {
                        "color": "semi-dark-red",
                        "index": 0
                      },
                      "to": 110
                    },
                    "type": "range"
                  }
                ]
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "挂载Pod数"
            },
            "properties": [
              {
                "id": "unit",
                "value": "none"
              },
              {
                "id": "custom.width",
                "value": 59
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "命名空间"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 58
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "PVC"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 94
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "使用量"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 57
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "总量"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 54
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 6,
        "x": 0,
        "y": 33
      },
      "id": 92,
      "options": {
        "cellHeight": "sm",
        "footer": {
          "countRows": false,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true,
        "sortBy": [
          {
            "desc": true,
            "displayName": "使用率"
          }
        ]
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max by (namespace,persistentvolumeclaim) (kubelet_volume_stats_used_bytes{origin_prometheus=~\"$origin_prometheus\"})",
          "format": "table",
          "instant": true,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "{{namespace}}:{{ persistentvolumeclaim }}",
          "metric": "container_memory_usage:sort_desc",
          "range": false,
          "refId": "A",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "min by (namespace,persistentvolumeclaim) (kubelet_volume_stats_available_bytes{origin_prometheus=~\"$origin_prometheus\"}) + max by (namespace,persistentvolumeclaim) (kubelet_volume_stats_used_bytes{origin_prometheus=~\"$origin_prometheus\"})",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "__auto",
          "metric": "container_memory_usage:sort_desc",
          "range": false,
          "refId": "B",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max by (namespace,persistentvolumeclaim) (kubelet_volume_stats_used_bytes{origin_prometheus=~\"$origin_prometheus\"}) /(min by (namespace,persistentvolumeclaim) (kubelet_volume_stats_available_bytes{origin_prometheus=~\"$origin_prometheus\"}) + max by (namespace,persistentvolumeclaim) (kubelet_volume_stats_used_bytes{origin_prometheus=~\"$origin_prometheus\"}))*100",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "{{namespace}}:{{ persistentvolumeclaim }}",
          "metric": "container_memory_usage:sort_desc",
          "range": false,
          "refId": "C",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "count by (namespace,persistentvolumeclaim)(kube_pod_spec_volumes_persistentvolumeclaims_info{origin_prometheus=~\"$origin_prometheus\"})",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "__auto",
          "metric": "container_memory_usage:sort_desc",
          "range": false,
          "refId": "D",
          "step": 10
        }
      ],
      "title": "PVC存储使用情况",
      "transformations": [
        {
          "id": "merge",
          "options": {}
        },
        {
          "id": "organize",
          "options": {
            "excludeByName": {
              "Time": true
            },
            "includeByName": {},
            "indexByName": {},
            "renameByName": {
              "Value #A": "使用量",
              "Value #B": "总量",
              "Value #C": "使用率",
              "Value #D": "挂载Pod数",
              "namespace": "命名空间",
              "persistentvolumeclaim": "PVC"
            }
          }
        }
      ],
      "type": "table"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "none"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 9,
        "x": 6,
        "y": 33
      },
      "id": 86,
      "options": {
        "legend": {
          "calcs": [
            "last",
            "max"
          ],
          "displayMode": "table",
          "placement": "right",
          "showLegend": true,
          "sortBy": "Max",
          "sortDesc": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container !=\"\",container!=\"POD\"}[2m])) by (namespace)>0.5",
          "hide": false,
          "instant": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "{{ namespace }}",
          "metric": "container_cpu",
          "refId": "A",
          "step": 10
        }
      ],
      "title": "各命名空间CPU使用核(>0.5)",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "decimals": 0,
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 8,
        "w": 9,
        "x": 15,
        "y": 33
      },
      "id": 85,
      "options": {
        "legend": {
          "calcs": [
            "last",
            "max"
          ],
          "displayMode": "table",
          "placement": "right",
          "showLegend": true,
          "sortBy": "Max",
          "sortDesc": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container !=\"\",container!=\"POD\"}) by (namespace) > 1*1024*1024*1024",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "{{namespace} {{ pod }}",
          "metric": "container_memory_usage:sort_desc",
          "range": true,
          "refId": "A",
          "step": 10
        }
      ],
      "title": "命名空间WSS内存使用(>1G)",
      "type": "timeseries"
    },
    {
      "collapsed": false,
      "datasource": {
        "type": "prometheus",
        "uid": "WAYOn0FGz"
      },
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 41
      },
      "id": 49,
      "panels": [],
      "title": "Pod资源总览：所选Pod:【$Pod】",
      "type": "row"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "thresholds"
          },
          "custom": {
            "align": "center",
            "cellOptions": {
              "type": "auto"
            },
            "filterable": false,
            "inspect": false
          },
          "displayName": "",
          "mappings": [],
          "max": 100,
          "min": 0,
          "thresholds": {
            "mode": "percentage",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "#EAB839",
                "value": 80
              },
              {
                "color": "red",
                "value": 90
              }
            ]
          },
          "unit": "short"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byName",
              "options": "命名空间"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 96
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "Pod名称"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 207
              },
              {
                "id": "custom.align",
                "value": "right"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "使用核数"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 71
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "重启"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 38
              },
              {
                "id": "thresholds",
                "value": {
                  "mode": "absolute",
                  "steps": [
                    {
                      "color": "green"
                    },
                    {
                      "color": "#EAB839",
                      "value": 1
                    },
                    {
                      "color": "red",
                      "value": 3
                    }
                  ]
                }
              },
              {
                "id": "custom.cellOptions",
                "value": {
                  "mode": "gradient",
                  "type": "color-background"
                }
              },
              {
                "id": "decimals"
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": ".*%"
            },
            "properties": [
              {
                "id": "unit",
                "value": "percentunit"
              },
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "color-background"
                }
              },
              {
                "id": "color",
                "value": {
                  "mode": "continuous-GrYlRd"
                }
              },
              {
                "id": "decimals",
                "value": 1
              },
              {
                "id": "custom.width",
                "value": 55
              },
              {
                "id": "min",
                "value": 0
              },
              {
                "id": "max",
                "value": 1
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": ".*限制"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "blue",
                  "mode": "fixed"
                }
              },
              {
                "id": "custom.cellOptions",
                "value": {
                  "mode": "gradient",
                  "type": "color-background"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "节点"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 100
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "使用核$|WSS$|RSS$|存活|流入|流出"
            },
            "properties": [
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "color-text"
                }
              },
              {
                "id": "color",
                "value": {
                  "fixedColor": "orange",
                  "mode": "fixed"
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "容器名"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 57
              },
              {
                "id": "custom.align",
                "value": "left"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "存活"
            },
            "properties": [
              {
                "id": "unit",
                "value": "s"
              },
              {
                "id": "custom.width",
                "value": 80
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "使用核"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 62
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "CPU限制"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 58
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "内存限制"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 68
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "内存需求"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 88
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "WSS$|RSS$|内存需求$|内存限制$|磁盘.*$"
            },
            "properties": [
              {
                "id": "unit",
                "value": "bytes"
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "WSS"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 81
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "RSS"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 74
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "CPU需求"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 72
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "磁盘限制"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 83
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "磁盘使用"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 72
              },
              {
                "id": "custom.cellOptions",
                "value": {
                  "type": "color-background"
                }
              },
              {
                "id": "thresholds",
                "value": {
                  "mode": "absolute",
                  "steps": [
                    {
                      "color": "green"
                    },
                    {
                      "color": "orange",
                      "value": 10737418240
                    },
                    {
                      "color": "red",
                      "value": 16106127360
                    }
                  ]
                }
              }
            ]
          },
          {
            "matcher": {
              "id": "byName",
              "options": "WSS%"
            },
            "properties": [
              {
                "id": "custom.width",
                "value": 77
              }
            ]
          },
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/流入|流出/"
            },
            "properties": [
              {
                "id": "unit",
                "value": "binbps"
              },
              {
                "id": "custom.width",
                "value": 80
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 8,
        "w": 24,
        "x": 0,
        "y": 42
      },
      "id": 47,
      "options": {
        "cellHeight": "sm",
        "footer": {
          "countRows": false,
          "fields": "",
          "reducer": [
            "sum"
          ],
          "show": false
        },
        "showHeader": true,
        "sortBy": [
          {
            "desc": true,
            "displayName": "WSS%"
          }
        ]
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (container, pod,node,namespace) / (sum(container_spec_cpu_quota{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}/100000) by (container, pod,node,namespace)) ",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "A"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (container, pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "CPU核数使用",
          "refId": "Q"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",pod=~\"$Pod\",container =~\"$Container\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "B"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",pod=~\"$Pod\",container =~\"$Container\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)",
          "format": "table",
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "C"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)/ sum(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "wss%",
          "refId": "I"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "wss",
          "refId": "D"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)/ sum(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "rss%",
          "refId": "L"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "rss",
          "refId": "K"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",pod=~\"$Pod\",container =~\"$Container\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "E"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "exemplar": false,
          "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",pod=~\"$Pod\",container =~\"$Container\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "F"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(container_fs_usage_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)",
          "format": "table",
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "J"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "kube_pod_container_status_restarts_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"} * on (pod) group_left(node) kube_pod_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "H"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "time() - kube_pod_created{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\"} * on(pod) group_right kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\",container =~\"$Container\"}",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "__auto",
          "refId": "R"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(container_fs_limit_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "",
          "refId": "S"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(sum(irate(container_network_receive_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\",container =~\"$Container\"}) by(pod) *8",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "__auto",
          "refId": "T"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "sum(sum(irate(container_network_transmit_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\",container =~\"$Container\"}) by(pod) *8",
          "format": "table",
          "hide": false,
          "instant": true,
          "interval": "",
          "legendFormat": "__auto",
          "refId": "U"
        }
      ],
      "title": "$Node：Pod资源明细(可关联节点)",
      "transformations": [
        {
          "id": "merge",
          "options": {}
        },
        {
          "id": "organize",
          "options": {
            "excludeByName": {
              "Time": true,
              "Time 1": true,
              "Time 10": true,
              "Time 11": true,
              "Time 12": true,
              "Time 13": true,
              "Time 2": true,
              "Time 3": true,
              "Time 4": true,
              "Time 5": true,
              "Time 6": true,
              "Time 7": true,
              "Time 8": true,
              "Time 9": true,
              "Value #G": false,
              "__name__": true,
              "app_kubernetes_io_name": true,
              "app_kubernetes_io_name 1": true,
              "app_kubernetes_io_name 2": true,
              "app_kubernetes_io_version": true,
              "app_kubernetes_io_version 1": true,
              "app_kubernetes_io_version 2": true,
              "container 1": true,
              "container 10": true,
              "container 11": true,
              "container 12": true,
              "container 2": true,
              "container 3": true,
              "container 4": true,
              "container 5": true,
              "container 6": true,
              "container 7": true,
              "container 8": true,
              "container 9": true,
              "created_by_kind": true,
              "created_by_name": true,
              "host_ip": true,
              "instance": true,
              "instance 1": true,
              "instance 2": true,
              "job": true,
              "job 1": true,
              "job 2": true,
              "k8s_namespace": true,
              "k8s_namespace 1": true,
              "k8s_namespace 2": true,
              "k8s_sname": true,
              "k8s_sname 1": true,
              "k8s_sname 2": true,
              "namespace": false,
              "namespace 1": true,
              "namespace 10": true,
              "namespace 11": true,
              "namespace 12": false,
              "namespace 2": true,
              "namespace 3": true,
              "namespace 4": true,
              "namespace 5": true,
              "namespace 6": true,
              "namespace 7": true,
              "namespace 8": true,
              "namespace 9": true,
              "node 1": true,
              "node 10": true,
              "node 11": false,
              "node 12": true,
              "node 2": true,
              "node 3": true,
              "node 4": true,
              "node 5": true,
              "node 6": true,
              "node 7": true,
              "node 8": true,
              "node 9": true,
              "origin_prometheus": true,
              "origin_prometheus 1": true,
              "origin_prometheus 2": true,
              "phase": true,
              "pod_ip": true,
              "priority_class": true,
              "uid": true
            },
            "includeByName": {},
            "indexByName": {
              "Time": 21,
              "Value #A": 4,
              "Value #B": 16,
              "Value #C": 7,
              "Value #D": 10,
              "Value #E": 17,
              "Value #F": 9,
              "Value #G": 23,
              "Value #H": 14,
              "Value #I": 5,
              "Value #J": 13,
              "Value #K": 11,
              "Value #L": 6,
              "Value #M": 24,
              "Value #N": 25,
              "Value #O": 26,
              "Value #P": 27,
              "Value #Q": 8,
              "Value #R": 15,
              "Value #S": 12,
              "container": 2,
              "instance": 18,
              "ip": 28,
              "job": 19,
              "namespace": 1,
              "node": 0,
              "origin_prometheus": 20,
              "pod": 3,
              "uid": 22
            },
            "renameByName": {
              "Value #A": "CPU%",
              "Value #B": "CPU需求",
              "Value #C": "CPU限制",
              "Value #D": "WSS",
              "Value #E": "内存需求",
              "Value #F": "内存限制",
              "Value #H": "重启",
              "Value #I": "WSS%",
              "Value #J": "磁盘使用",
              "Value #K": "RSS",
              "Value #L": "RSS%",
              "Value #M": "堆内存",
              "Value #N": "max堆",
              "Value #O": "非堆",
              "Value #P": "max非堆",
              "Value #Q": "使用核",
              "Value #R": "存活",
              "Value #S": "磁盘限制",
              "Value #T": "流入",
              "Value #U": "流出",
              "container": "容器名",
              "instance": "",
              "ip": "POD IP",
              "namespace": "命名空间",
              "namespace 1": "",
              "namespace 12": "命名空间",
              "node": "节点",
              "node 1": "",
              "node 11": "节点",
              "pod": "Pod名称",
              "priority_class": ""
            }
          }
        },
        {
          "id": "filterFieldsByName",
          "options": {
            "include": {
              "names": [
                "节点",
                "命名空间",
                "容器名",
                "Pod名称",
                "CPU%",
                "WSS%",
                "RSS%",
                "CPU限制",
                "使用核",
                "内存限制",
                "WSS",
                "RSS",
                "磁盘限制",
                "磁盘使用",
                "重启",
                "CPU需求",
                "内存需求",
                "流入",
                "流出",
                "存活"
              ]
            }
          }
        }
      ],
      "type": "table"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 0,
        "y": 50
      },
      "id": 58,
      "options": {
        "legend": {
          "calcs": [
            "mean",
            "lastNotNull",
            "max"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "max(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (container, pod) / (max(container_spec_cpu_quota{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}/100000) by (container, pod)) * 100",
          "hide": false,
          "instant": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "{{ pod }}",
          "metric": "container_cpu",
          "refId": "A",
          "step": 10
        }
      ],
      "title": "Pod容器CPU使用率(最大100%可关联节点)",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "percent"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 8,
        "y": 50
      },
      "id": 27,
      "options": {
        "legend": {
          "calcs": [
            "max",
            "last",
            "mean"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod)/ max(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod) * 100",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "WSS：{{ pod }}",
          "metric": "container_memory_usage:sort_desc",
          "range": true,
          "refId": "A",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod)/ max(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod) * 100",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "RSS：{{ pod }}",
          "metric": "container_memory_usage:sort_desc",
          "range": true,
          "refId": "B",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "(cass_jvm_heap{service=~\"$Container\"} * on (pod_ip) group_right(service) kube_pod_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\"}) / (cass_jvm_heap_max{service=~\"$Container\"} * on (pod_ip) group_right(service) kube_pod_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\"}) * 100",
          "hide": true,
          "instant": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Heap：{{ pod }}",
          "metric": "container_memory_usage:sort_desc",
          "refId": "C",
          "step": 10
        }
      ],
      "title": "Pod容器内存使用率(可关联节点)",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "binbps"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 16,
        "y": 50
      },
      "id": 77,
      "options": {
        "legend": {
          "calcs": [
            "max",
            "last",
            "mean"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max(max(irate(container_network_receive_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\",container =~\"$Container\"}) by(pod) *8",
          "hide": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "流入:{{ pod}}",
          "metric": "network",
          "range": true,
          "refId": "A",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max(max(irate(container_network_transmit_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",namespace=~\"$NameSpace\",container =~\"$Container\"}) by(pod) *8",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "流出:{{ pod}}",
          "metric": "network",
          "range": true,
          "refId": "B",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "expr": "sum(sum(irate(container_network_receive_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",image!=\"\",name=~\"^k8s_.*\",node=~\"^$Node$\",namespace=~\"$NameSpace\",pod=~\".*$Container.*\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info) by(pod) *8",
          "hide": true,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "__auto",
          "metric": "network",
          "range": true,
          "refId": "C",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "expr": "sum(sum(irate(container_network_transmit_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",image!=\"\",name=~\"^k8s_.*\",node=~\"^$Node$\",namespace=~\"$NameSpace\",pod=~\".*$Container.*\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info) by(pod) *8",
          "hide": true,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "__auto",
          "metric": "network",
          "range": true,
          "refId": "D",
          "step": 10
        }
      ],
      "title": "Pod每秒网络带宽 (可关联节点)",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "none"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/限制.*/"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 0,
        "y": 59
      },
      "id": 82,
      "options": {
        "legend": {
          "calcs": [
            "max",
            "last",
            "mean"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true,
          "sortBy": "Max",
          "sortDesc": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "max(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (container, pod,node,namespace)",
          "hide": false,
          "instant": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "CPU使用：{{ pod }}",
          "metric": "container_cpu",
          "refId": "A",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "max(max(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",pod=~\"$Pod\",container =~\"$Container\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)) by(container)",
          "hide": false,
          "instant": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Pod CPU限制：{{ container}}",
          "metric": "container_cpu",
          "refId": "B",
          "step": 10
        }
      ],
      "title": "Pod容器CPU核使用",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": [
          {
            "matcher": {
              "id": "byRegexp",
              "options": "/.*限制/"
            },
            "properties": [
              {
                "id": "color",
                "value": {
                  "fixedColor": "red",
                  "mode": "fixed"
                }
              }
            ]
          }
        ]
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 8,
        "y": 59
      },
      "id": 84,
      "options": {
        "legend": {
          "calcs": [
            "max",
            "last",
            "mean"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true,
          "sortBy": "Max",
          "sortDesc": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "WSS：{{ pod }}",
          "metric": "container_memory_usage:sort_desc",
          "range": true,
          "refId": "A",
          "step": 10
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": false,
          "expr": "max(max(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",pod=~\"$Pod\",container =~\"$Container\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container,pod,node,namespace)) by(container)",
          "hide": false,
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "Pod内存限制：{{ container}}",
          "metric": "container_memory_usage:sort_desc",
          "range": true,
          "refId": "B",
          "step": 10
        }
      ],
      "title": "Pod容器WSS内存使用(可关联节点)",
      "type": "timeseries"
    },
    {
      "datasource": {
        "type": "prometheus",
        "uid": "PBFA97CFB590B2093"
      },
      "fieldConfig": {
        "defaults": {
          "color": {
            "mode": "palette-classic"
          },
          "custom": {
            "axisBorderShow": false,
            "axisCenteredZero": false,
            "axisColorMode": "text",
            "axisLabel": "",
            "axisPlacement": "auto",
            "barAlignment": 0,
            "drawStyle": "line",
            "fillOpacity": 0,
            "gradientMode": "none",
            "hideFrom": {
              "legend": false,
              "tooltip": false,
              "viz": false
            },
            "insertNulls": false,
            "lineInterpolation": "linear",
            "lineWidth": 1,
            "pointSize": 5,
            "scaleDistribution": {
              "type": "linear"
            },
            "showPoints": "never",
            "spanNulls": false,
            "stacking": {
              "group": "A",
              "mode": "none"
            },
            "thresholdsStyle": {
              "mode": "off"
            }
          },
          "links": [],
          "mappings": [],
          "thresholds": {
            "mode": "absolute",
            "steps": [
              {
                "color": "green"
              },
              {
                "color": "red",
                "value": 80
              }
            ]
          },
          "unit": "bytes"
        },
        "overrides": []
      },
      "gridPos": {
        "h": 9,
        "w": 8,
        "x": 16,
        "y": 59
      },
      "id": 83,
      "options": {
        "legend": {
          "calcs": [
            "lastNotNull",
            "max"
          ],
          "displayMode": "table",
          "placement": "bottom",
          "showLegend": true
        },
        "tooltip": {
          "mode": "multi",
          "sort": "desc"
        }
      },
      "pluginVersion": "10.4.1",
      "targets": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "editorMode": "code",
          "exemplar": true,
          "expr": "max (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",container =~\"$Container\",container !=\"\",container!=\"POD\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}) by (container, pod,node,namespace)",
          "interval": "",
          "intervalFactor": 1,
          "legendFormat": "RSS：{{ pod }}",
          "metric": "container_memory_usage:sort_desc",
          "range": true,
          "refId": "A",
          "step": 10
        }
      ],
      "title": "Pod容器RSS内存使用(可关联节点)",
      "type": "timeseries"
    },
    {
      "collapsed": true,
      "datasource": {
        "type": "prometheus",
        "uid": "WAYOn0FGz"
      },
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 68
      },
      "id": 61,
      "panels": [
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "fieldConfig": {
            "defaults": {
              "color": {
                "mode": "thresholds"
              },
              "custom": {
                "align": "center",
                "cellOptions": {
                  "type": "auto"
                },
                "filterable": false,
                "inspect": false
              },
              "displayName": "",
              "mappings": [],
              "thresholds": {
                "mode": "percentage",
                "steps": [
                  {
                    "color": "green"
                  }
                ]
              },
              "unit": "none"
            },
            "overrides": [
              {
                "matcher": {
                  "id": "byRegexp",
                  "options": ".*%"
                },
                "properties": [
                  {
                    "id": "unit",
                    "value": "percentunit"
                  },
                  {
                    "id": "custom.cellOptions",
                    "value": {
                      "mode": "gradient",
                      "type": "gauge",
                      "valueDisplayMode": "color"
                    }
                  },
                  {
                    "id": "max",
                    "value": 1
                  },
                  {
                    "id": "min",
                    "value": 0
                  },
                  {
                    "id": "color",
                    "value": {
                      "mode": "continuous-GrYlRd"
                    }
                  },
                  {
                    "id": "decimals",
                    "value": 0
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byRegexp",
                  "options": ".*内存使用$|.*内存限制$|.*内存需求$|.*磁盘使用$|.*磁盘限制$"
                },
                "properties": [
                  {
                    "id": "unit",
                    "value": "bytes"
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "命名空间"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 92
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "容器名"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 187
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "总CPU核使用"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 100
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "Pod"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 44
                  },
                  {
                    "id": "custom.cellOptions",
                    "value": {
                      "type": "color-background"
                    }
                  },
                  {
                    "id": "color",
                    "value": {
                      "fixedColor": "blue",
                      "mode": "fixed"
                    }
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "平均CPU使用%"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 116
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "平均RSS内存使用%"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 141
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "平均WSS内存使用%"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 165
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "总CPU限制"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 86
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "总内存限制"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 86
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byRegexp",
                  "options": "/.*限制$/"
                },
                "properties": [
                  {
                    "id": "color",
                    "value": {
                      "fixedColor": "blue",
                      "mode": "fixed"
                    }
                  },
                  {
                    "id": "custom.cellOptions",
                    "value": {
                      "type": "color-background"
                    }
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byRegexp",
                  "options": "/.*内存使用$|.*核使用$/"
                },
                "properties": [
                  {
                    "id": "custom.cellOptions",
                    "value": {
                      "type": "color-text"
                    }
                  },
                  {
                    "id": "color",
                    "value": {
                      "fixedColor": "orange",
                      "mode": "fixed"
                    }
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "总RSS内存使用"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 107
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "总WSS内存使用"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 113
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "平均磁盘使用"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 96
                  },
                  {
                    "id": "custom.cellOptions",
                    "value": {
                      "type": "color-background"
                    }
                  },
                  {
                    "id": "thresholds",
                    "value": {
                      "mode": "absolute",
                      "steps": [
                        {
                          "color": "green"
                        },
                        {
                          "color": "orange",
                          "value": 10737418240
                        },
                        {
                          "color": "red",
                          "value": 16106127360
                        }
                      ]
                    }
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "平均磁盘限制"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 96
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "总CPU需求"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 80
                  }
                ]
              },
              {
                "matcher": {
                  "id": "byName",
                  "options": "总内存需求"
                },
                "properties": [
                  {
                    "id": "custom.width",
                    "value": 80
                  }
                ]
              }
            ]
          },
          "gridPos": {
            "h": 9,
            "w": 24,
            "x": 0,
            "y": 3
          },
          "id": 87,
          "options": {
            "cellHeight": "sm",
            "footer": {
              "countRows": false,
              "enablePagination": true,
              "fields": "",
              "reducer": [
                "sum"
              ],
              "show": false
            },
            "showHeader": true,
            "sortBy": [
              {
                "desc": true,
                "displayName": "平均WSS内存使用%"
              }
            ]
          },
          "pluginVersion": "10.4.1",
          "targets": [
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "sum(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}[2m])) by (container) / (sum(container_spec_cpu_quota{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}/100000) by (container))",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "A"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "sum(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}[2m])) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "总核数使用",
              "refId": "L"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "exemplar": false,
              "expr": "sum(kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "B"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "exemplar": false,
              "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "C"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)/ sum(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "I"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "exemplar": false,
              "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "D"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "sum (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)/ sum(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "平均内存%(RSS)",
              "refId": "H"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "exemplar": false,
              "expr": "sum (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "总内存使用(RSS) ",
              "refId": "K"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "sum by(container) (kube_pod_container_resource_requests{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"})",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "E"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "exemplar": false,
              "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"memory\", unit=\"byte\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "F"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "avg(container_fs_usage_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "J"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "count(kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by(container,namespace)",
              "format": "table",
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "G"
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": false,
              "expr": "avg(container_fs_limit_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "format": "table",
              "hide": false,
              "instant": true,
              "interval": "",
              "legendFormat": "",
              "refId": "M"
            }
          ],
          "title": "微服务(容器名)资源统计",
          "transformations": [
            {
              "id": "merge",
              "options": {}
            },
            {
              "id": "organize",
              "options": {
                "excludeByName": {
                  "Time": true,
                  "Time 1": true,
                  "Time 10": true,
                  "Time 11": true,
                  "Time 12": true,
                  "Time 2": true,
                  "Time 3": true,
                  "Time 4": true,
                  "Time 5": true,
                  "Time 6": true,
                  "Time 7": true,
                  "Time 8": true,
                  "Time 9": true
                },
                "includeByName": {},
                "indexByName": {
                  "Time": 15,
                  "Value #A": 3,
                  "Value #B": 13,
                  "Value #C": 6,
                  "Value #D": 9,
                  "Value #E": 14,
                  "Value #F": 8,
                  "Value #G": 2,
                  "Value #H": 5,
                  "Value #I": 4,
                  "Value #J": 12,
                  "Value #K": 10,
                  "Value #L": 7,
                  "Value #M": 11,
                  "container": 1,
                  "namespace": 0
                },
                "renameByName": {
                  "Time 1": "",
                  "Value #A": "平均CPU使用%",
                  "Value #B": "总CPU需求",
                  "Value #C": "总CPU限制",
                  "Value #D": "总WSS内存使用",
                  "Value #E": "总内存需求",
                  "Value #F": "总内存限制",
                  "Value #G": "Pod",
                  "Value #H": "平均RSS内存使用%",
                  "Value #I": "平均WSS内存使用%",
                  "Value #J": "平均磁盘使用",
                  "Value #K": "总RSS内存使用",
                  "Value #L": "总CPU核使用",
                  "Value #M": "平均磁盘限制",
                  "container": "容器名",
                  "namespace": "命名空间"
                }
              }
            },
            {
              "id": "filterFieldsByName",
              "options": {}
            }
          ],
          "type": "table"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "fieldConfig": {
            "defaults": {
              "color": {
                "mode": "palette-classic"
              },
              "custom": {
                "axisBorderShow": false,
                "axisCenteredZero": false,
                "axisColorMode": "text",
                "axisLabel": "",
                "axisPlacement": "auto",
                "barAlignment": 0,
                "drawStyle": "line",
                "fillOpacity": 0,
                "gradientMode": "none",
                "hideFrom": {
                  "legend": false,
                  "tooltip": false,
                  "viz": false
                },
                "insertNulls": false,
                "lineInterpolation": "linear",
                "lineWidth": 1,
                "pointSize": 5,
                "scaleDistribution": {
                  "type": "linear"
                },
                "showPoints": "never",
                "spanNulls": false,
                "stacking": {
                  "group": "A",
                  "mode": "none"
                },
                "thresholdsStyle": {
                  "mode": "off"
                }
              },
              "links": [],
              "mappings": [],
              "thresholds": {
                "mode": "absolute",
                "steps": [
                  {
                    "color": "green"
                  },
                  {
                    "color": "red",
                    "value": 80
                  }
                ]
              },
              "unit": "percent"
            },
            "overrides": []
          },
          "gridPos": {
            "h": 7,
            "w": 8,
            "x": 0,
            "y": 12
          },
          "id": 24,
          "options": {
            "legend": {
              "calcs": [
                "max",
                "last",
                "mean"
              ],
              "displayMode": "table",
              "placement": "bottom",
              "showLegend": true
            },
            "tooltip": {
              "mode": "multi",
              "sort": "desc"
            }
          },
          "pluginVersion": "10.4.1",
          "targets": [
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "exemplar": true,
              "expr": "sum(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}[2m])) by (container) / (sum(container_spec_cpu_quota{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}/100000) by (container)) * 100",
              "hide": false,
              "instant": false,
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "{{ container}}",
              "metric": "container_cpu",
              "refId": "A",
              "step": 10
            }
          ],
          "title": "微服务(容器名)平均CPU使用率(最大100%)",
          "type": "timeseries"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "fieldConfig": {
            "defaults": {
              "color": {
                "mode": "palette-classic"
              },
              "custom": {
                "axisBorderShow": false,
                "axisCenteredZero": false,
                "axisColorMode": "text",
                "axisLabel": "",
                "axisPlacement": "auto",
                "barAlignment": 0,
                "drawStyle": "line",
                "fillOpacity": 0,
                "gradientMode": "none",
                "hideFrom": {
                  "legend": false,
                  "tooltip": false,
                  "viz": false
                },
                "insertNulls": false,
                "lineInterpolation": "linear",
                "lineWidth": 1,
                "pointSize": 5,
                "scaleDistribution": {
                  "type": "linear"
                },
                "showPoints": "never",
                "spanNulls": false,
                "stacking": {
                  "group": "A",
                  "mode": "none"
                },
                "thresholdsStyle": {
                  "mode": "off"
                }
              },
              "links": [],
              "mappings": [],
              "thresholds": {
                "mode": "absolute",
                "steps": [
                  {
                    "color": "green"
                  },
                  {
                    "color": "red",
                    "value": 80
                  }
                ]
              },
              "unit": "percent"
            },
            "overrides": []
          },
          "gridPos": {
            "h": 7,
            "w": 8,
            "x": 8,
            "y": 12
          },
          "id": 89,
          "options": {
            "legend": {
              "calcs": [
                "max",
                "last",
                "mean"
              ],
              "displayMode": "table",
              "placement": "bottom",
              "showLegend": true
            },
            "tooltip": {
              "mode": "multi",
              "sort": "desc"
            }
          },
          "pluginVersion": "10.4.1",
          "targets": [
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)/ sum(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container) * 100",
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "WSS：{{ container }}",
              "metric": "container_memory_usage:sort_desc",
              "refId": "A",
              "step": 10
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "expr": "sum (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)/ sum(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container) * 100",
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "RSS：{{ container }}",
              "metric": "container_memory_usage:sort_desc",
              "refId": "B",
              "step": 10
            }
          ],
          "title": "微服务(容器名)平均内存使用率",
          "type": "timeseries"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "fieldConfig": {
            "defaults": {
              "color": {
                "mode": "palette-classic"
              },
              "custom": {
                "axisBorderShow": false,
                "axisCenteredZero": false,
                "axisColorMode": "text",
                "axisLabel": "",
                "axisPlacement": "auto",
                "barAlignment": 0,
                "drawStyle": "line",
                "fillOpacity": 0,
                "gradientMode": "none",
                "hideFrom": {
                  "legend": false,
                  "tooltip": false,
                  "viz": false
                },
                "insertNulls": false,
                "lineInterpolation": "linear",
                "lineWidth": 1,
                "pointSize": 5,
                "scaleDistribution": {
                  "type": "linear"
                },
                "showPoints": "never",
                "spanNulls": false,
                "stacking": {
                  "group": "A",
                  "mode": "none"
                },
                "thresholdsStyle": {
                  "mode": "off"
                }
              },
              "links": [],
              "mappings": [],
              "thresholds": {
                "mode": "absolute",
                "steps": [
                  {
                    "color": "green"
                  },
                  {
                    "color": "red",
                    "value": 80
                  }
                ]
              },
              "unit": "binbps"
            },
            "overrides": []
          },
          "gridPos": {
            "h": 7,
            "w": 8,
            "x": 16,
            "y": 12
          },
          "id": 16,
          "options": {
            "legend": {
              "calcs": [
                "mean",
                "last",
                "max"
              ],
              "displayMode": "table",
              "placement": "bottom",
              "showLegend": true
            },
            "tooltip": {
              "mode": "multi",
              "sort": "desc"
            }
          },
          "pluginVersion": "10.4.1",
          "targets": [
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": true,
              "expr": "sum(sum(irate(container_network_receive_bytes_total{origin_prometheus=~\"$origin_prometheus\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",namespace=~\"$NameSpace\",container =~\"$Container\"}) by(container) *8",
              "hide": false,
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "流入:{{ container }}",
              "metric": "network",
              "range": true,
              "refId": "A",
              "step": 10
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": true,
              "expr": "sum(sum(irate(container_network_transmit_bytes_total{origin_prometheus=~\"$origin_prometheus\",node=~\"^$Node$\",namespace=~\"$NameSpace\"}[2m])) by (pod)* on(pod) group_right kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",namespace=~\"$NameSpace\",container =~\"$Container\"}) by(container) *8",
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "流出:{{ container }}",
              "metric": "network",
              "range": true,
              "refId": "B",
              "step": 10
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "expr": "sum (rate (container_network_receive_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",image!=\"\",name=~\"^k8s_.*\",node=~\"^$Node$\",namespace=~\"$NameSpace\",pod=~\".*$Container.*\"}[2m])) by (pod)",
              "hide": true,
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "-> {{ pod }}",
              "metric": "network",
              "refId": "C",
              "step": 10
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "expr": "- sum (rate (container_network_transmit_bytes_total{origin_prometheus=~\"$origin_prometheus\",pod=~\"$Pod\",image!=\"\",name=~\"^k8s_.*\",node=~\"^$Node$\",namespace=~\"$NameSpace\",pod=~\".*$Container.*\"}[2m])) by (pod)",
              "hide": true,
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "<- {{ pod }}",
              "metric": "network",
              "refId": "D",
              "step": 10
            }
          ],
          "title": "微服务(容器名)每秒网络带宽 (可关联节点)",
          "type": "timeseries"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "fieldConfig": {
            "defaults": {
              "color": {
                "mode": "palette-classic"
              },
              "custom": {
                "axisBorderShow": false,
                "axisCenteredZero": false,
                "axisColorMode": "text",
                "axisLabel": "",
                "axisPlacement": "auto",
                "barAlignment": 0,
                "drawStyle": "line",
                "fillOpacity": 0,
                "gradientMode": "none",
                "hideFrom": {
                  "legend": false,
                  "tooltip": false,
                  "viz": false
                },
                "insertNulls": false,
                "lineInterpolation": "linear",
                "lineWidth": 1,
                "pointSize": 5,
                "scaleDistribution": {
                  "type": "linear"
                },
                "showPoints": "never",
                "spanNulls": false,
                "stacking": {
                  "group": "A",
                  "mode": "none"
                },
                "thresholdsStyle": {
                  "mode": "off"
                }
              },
              "links": [],
              "mappings": [],
              "thresholds": {
                "mode": "absolute",
                "steps": [
                  {
                    "color": "green"
                  },
                  {
                    "color": "red",
                    "value": 80
                  }
                ]
              },
              "unit": "none"
            },
            "overrides": [
              {
                "matcher": {
                  "id": "byRegexp",
                  "options": "/CPU限制.*/"
                },
                "properties": [
                  {
                    "id": "color",
                    "value": {
                      "fixedColor": "red",
                      "mode": "fixed"
                    }
                  }
                ]
              }
            ]
          },
          "gridPos": {
            "h": 8,
            "w": 8,
            "x": 0,
            "y": 19
          },
          "id": 91,
          "options": {
            "legend": {
              "calcs": [
                "max",
                "last",
                "mean"
              ],
              "displayMode": "table",
              "placement": "bottom",
              "showLegend": true,
              "sortBy": "Max",
              "sortDesc": true
            },
            "tooltip": {
              "mode": "multi",
              "sort": "desc"
            }
          },
          "pluginVersion": "10.4.1",
          "targets": [
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": true,
              "expr": "sum(kube_pod_container_resource_limits{origin_prometheus=~\"$origin_prometheus\",resource=\"cpu\", unit=\"core\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "hide": false,
              "instant": false,
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "CPU限制：{{ container}}",
              "metric": "container_cpu",
              "refId": "A",
              "step": 10
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "exemplar": true,
              "expr": "sum(irate(container_cpu_usage_seconds_total{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}[2m])) by (container)",
              "hide": false,
              "instant": false,
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "CPU核使用：{{ container}}",
              "metric": "container_cpu",
              "refId": "B",
              "step": 10
            }
          ],
          "title": "微服务(容器名)整体CPU使用核",
          "type": "timeseries"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "fieldConfig": {
            "defaults": {
              "color": {
                "mode": "palette-classic"
              },
              "custom": {
                "axisBorderShow": false,
                "axisCenteredZero": false,
                "axisColorMode": "text",
                "axisLabel": "",
                "axisPlacement": "auto",
                "barAlignment": 0,
                "drawStyle": "line",
                "fillOpacity": 0,
                "gradientMode": "none",
                "hideFrom": {
                  "legend": false,
                  "tooltip": false,
                  "viz": false
                },
                "insertNulls": false,
                "lineInterpolation": "linear",
                "lineWidth": 1,
                "pointSize": 5,
                "scaleDistribution": {
                  "type": "linear"
                },
                "showPoints": "never",
                "spanNulls": false,
                "stacking": {
                  "group": "A",
                  "mode": "none"
                },
                "thresholdsStyle": {
                  "mode": "off"
                }
              },
              "links": [],
              "mappings": [],
              "thresholds": {
                "mode": "absolute",
                "steps": [
                  {
                    "color": "green"
                  },
                  {
                    "color": "red",
                    "value": 80
                  }
                ]
              },
              "unit": "bytes"
            },
            "overrides": [
              {
                "matcher": {
                  "id": "byRegexp",
                  "options": "/内存限制.*/"
                },
                "properties": [
                  {
                    "id": "color",
                    "value": {
                      "fixedColor": "red",
                      "mode": "fixed"
                    }
                  }
                ]
              }
            ]
          },
          "gridPos": {
            "h": 8,
            "w": 8,
            "x": 8,
            "y": 19
          },
          "id": 90,
          "options": {
            "legend": {
              "calcs": [
                "max",
                "last",
                "mean"
              ],
              "displayMode": "table",
              "placement": "bottom",
              "showLegend": true,
              "sortBy": "Max",
              "sortDesc": true
            },
            "tooltip": {
              "mode": "multi",
              "sort": "desc"
            }
          },
          "pluginVersion": "10.4.1",
          "targets": [
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "expr": "sum (container_memory_working_set_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "WSS：{{ container }}",
              "metric": "container_memory_usage:sort_desc",
              "range": true,
              "refId": "A",
              "step": 10
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "expr": "sum(container_spec_memory_limit_bytes{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "内存限制：{{ container }}",
              "metric": "container_memory_usage:sort_desc",
              "range": true,
              "refId": "B",
              "step": 10
            },
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "expr": "sum (container_memory_rss{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by (container)",
              "hide": false,
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "RSS：{{ container }}",
              "metric": "container_memory_usage:sort_desc",
              "range": true,
              "refId": "C",
              "step": 10
            }
          ],
          "title": "微服务(容器名)整体内存使用量",
          "type": "timeseries"
        },
        {
          "datasource": {
            "type": "prometheus",
            "uid": "PBFA97CFB590B2093"
          },
          "fieldConfig": {
            "defaults": {
              "color": {
                "mode": "palette-classic"
              },
              "custom": {
                "axisBorderShow": false,
                "axisCenteredZero": false,
                "axisColorMode": "text",
                "axisLabel": "",
                "axisPlacement": "auto",
                "barAlignment": 0,
                "drawStyle": "line",
                "fillOpacity": 0,
                "gradientMode": "none",
                "hideFrom": {
                  "legend": false,
                  "tooltip": false,
                  "viz": false
                },
                "insertNulls": false,
                "lineInterpolation": "linear",
                "lineWidth": 1,
                "pointSize": 5,
                "scaleDistribution": {
                  "type": "linear"
                },
                "showPoints": "never",
                "spanNulls": false,
                "stacking": {
                  "group": "A",
                  "mode": "none"
                },
                "thresholdsStyle": {
                  "mode": "off"
                }
              },
              "links": [],
              "mappings": [],
              "thresholds": {
                "mode": "absolute",
                "steps": [
                  {
                    "color": "green"
                  },
                  {
                    "color": "red",
                    "value": 80
                  }
                ]
              },
              "unit": "none"
            },
            "overrides": []
          },
          "gridPos": {
            "h": 8,
            "w": 8,
            "x": 16,
            "y": 19
          },
          "id": 59,
          "options": {
            "legend": {
              "calcs": [
                "max",
                "last",
                "mean"
              ],
              "displayMode": "table",
              "placement": "bottom",
              "showLegend": true
            },
            "tooltip": {
              "mode": "multi",
              "sort": "desc"
            }
          },
          "pluginVersion": "10.4.1",
          "targets": [
            {
              "datasource": {
                "type": "prometheus",
                "uid": "PBFA97CFB590B2093"
              },
              "editorMode": "code",
              "expr": "count(kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",container =~\"$Container\",container !=\"\",container!=\"POD\",namespace=~\"$NameSpace\"}) by(container,namespace)",
              "interval": "",
              "intervalFactor": 1,
              "legendFormat": "{{namespace}}：{{ container }}",
              "metric": "container_memory_usage:sort_desc",
              "range": true,
              "refId": "A",
              "step": 10
            }
          ],
          "title": "微服务(容器名)Pod数",
          "type": "timeseries"
        }
      ],
      "title": "微服务(容器名)资源总览：所选微服务:【$Container】",
      "type": "row"
    }
  ],
  "refresh": "",
  "schemaVersion": 39,
  "tags": [
    "StarsL.cn",
    "Prometheus",
    "Kubernetes"
  ],
  "templating": {
    "list": [
      {
        "allValue": "",
        "current": {
          "isNone": true,
          "selected": false,
          "text": "None",
          "value": ""
        },
        "datasource": {
          "type": "prometheus",
          "uid": "PBFA97CFB590B2093"
        },
        "definition": "label_values(kube_node_info,origin_prometheus)",
        "hide": 0,
        "includeAll": false,
        "label": "K8S",
        "multi": false,
        "name": "origin_prometheus",
        "options": [],
        "query": {
          "query": "label_values(kube_node_info,origin_prometheus)",
          "refId": "StandardVariableQuery"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 5,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      },
      {
        "allValue": ".*",
        "current": {
          "selected": false,
          "text": "All",
          "value": "$__all"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "PBFA97CFB590B2093"
        },
        "definition": "label_values(kube_node_info{origin_prometheus=~\"$origin_prometheus\"},node)",
        "hide": 0,
        "includeAll": true,
        "label": "节点",
        "multi": false,
        "name": "Node",
        "options": [],
        "query": {
          "query": "label_values(kube_node_info{origin_prometheus=~\"$origin_prometheus\"},node)",
          "refId": "StandardVariableQuery"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 5,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      },
      {
        "allValue": ".*",
        "current": {
          "selected": false,
          "text": "All",
          "value": "$__all"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "PBFA97CFB590B2093"
        },
        "definition": "label_values(kube_namespace_created{origin_prometheus=~\"$origin_prometheus\"},namespace)",
        "hide": 0,
        "includeAll": true,
        "label": "命名空间",
        "multi": false,
        "name": "NameSpace",
        "options": [],
        "query": {
          "query": "label_values(kube_namespace_created{origin_prometheus=~\"$origin_prometheus\"},namespace)",
          "refId": "PrometheusVariableQueryEditor-VariableQuery"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 5,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      },
      {
        "allValue": ".*",
        "current": {
          "selected": false,
          "text": "All",
          "value": "$__all"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "PBFA97CFB590B2093"
        },
        "definition": "label_values(kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",namespace=~\"$NameSpace\"},container)",
        "hide": 0,
        "includeAll": true,
        "label": "微服务(容器名)",
        "multi": false,
        "name": "Container",
        "options": [],
        "query": {
          "query": "label_values(kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",namespace=~\"$NameSpace\"},container)",
          "refId": "StandardVariableQuery"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 5,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      },
      {
        "allValue": ".*",
        "current": {
          "selected": false,
          "text": "All",
          "value": "$__all"
        },
        "datasource": {
          "type": "prometheus",
          "uid": "PBFA97CFB590B2093"
        },
        "definition": "label_values(kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",namespace=~\"$NameSpace\",container=~\"$Container\"},pod)",
        "hide": 0,
        "includeAll": true,
        "label": "Pod",
        "multi": false,
        "name": "Pod",
        "options": [],
        "query": {
          "query": "label_values(kube_pod_container_info{origin_prometheus=~\"$origin_prometheus\",namespace=~\"$NameSpace\",container=~\"$Container\"},pod)",
          "refId": "StandardVariableQuery"
        },
        "refresh": 2,
        "regex": "",
        "skipUrlSync": false,
        "sort": 5,
        "tagValuesQuery": "",
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      }
    ]
  },
  "time": {
    "from": "now-30m",
    "to": "now"
  },
  "timepicker": {
    "refresh_intervals": [
      "30s",
      "1m",
      "5m",
      "15m",
      "30m",
      "1h"
    ],
    "time_options": [
      "5m",
      "15m",
      "1h",
      "6h",
      "12h",
      "24h",
      "2d",
      "7d",
      "30d"
    ]
  },
  "timezone": "browser",
  "title": "K8S Dashboard CN 20240513 StarsL.cn",
  "uid": "StarsL_cn_K8S",
  "version": 1,
  "weekStart": ""
}