$onlyPrint = $false

# 编译镜像 linux/amd64
$buildImageList = @(
    # #####
    # "rocketmq:4.9.7",
    # "rocketmq:dashboard-latest",
    # "nacos-server:v2.1.1",
    # "emqx:5.1.0",
    # "registry:2",
    # "redis:6.2.12",
    # "redis:6.2.4",
    # "mongo-express:1.0.0-alpha.4-wait-for-it",
    # "docker-swarm-node-exporter:v0.16.0"
    # "portainer:agent-2.16.2",
    # "portainer:ce-2.16.2",
    # "dotnet-aspnet:6.0",
    # "dotnet-aspnet:6.0-powershell-7.2.19",
    # ”dotnet-aspnet:6.0-windowsservercore-ltsc2022“,
    # ”dotnet-sdk:6.0-windowsservercore-ltsc2022“,
    # "dotnet-sdk:6.0",
    # "aspnet:6-centos-7.9.2009-gdi-fontconfig",
    # "aspnet:6-focal-gdi-fontconfig",
    # "aspnet:5-focal-gdi-fontconfig",
    # "aspnet:5-focal-puppeteer", # 未完成
    # "aspnet:6-focal-puppeteer", # 未完成
    # "dotnet:5-focal",
    # "dotnet:6-focal",
    # "dotnet:5-focal-gdi-fontconfig",
    # "dotnet:6-focal-gdi-fontconfig",
    # "nginx:1.26.1",
    # "nginx:1.19.6",
    # "nginx:1.19.6-basic",
    # "nginx:1.19.6-appconfig-prod",
    # "nginx:1.19.6-appconfig-prod-pda",
    # "nginx:1.19.6-shell-runner",
    # "nginx:1.19.6-wait-for-it",
    "nginx:1.26.1-wait-for-it",
    # "node:8.9.4",
    # "node:14.21.3",
    # "node:16.13.1",
    # "node:18.0.0",
    # "node:22",
    # "powershell:lts-nanoserver-ltsc2022",
    # "powershell:lts-windowsservercore-ltsc2022",
    # "powershell:lts-windowsservercore-ltsc2022-docker-24.0.2",
    # "powershell:lts-debian-10-focal",
    # "powershell:lts-debian-10-focal-node-14",
    # "powershell:lts-debian-10-focal-node-16",
    # "powershell:lts-debian-10-focal-node-20",
    # "powershell:lts-debian-10-focal-docker-20-10-21",
    # "powershell:lts-debian-10-focal-docker-20-10-21-zip",
    # "powershell:lts-debian-10-focal-dotnet-5",
    # "powershell:lts-debian-10-focal-dotnet-5-node-16",
    # "powershell:lts-debian-10-focal-dotnet-5-node-20",
    # "powershell:lts-debian-10-focal-dotnet-6",
    # "powershell:lts-debian-10-focal-dotnet-6-node-16",
    # "powershell:lts-debian-10-focal-dotnet-6-node-20",
    # "frps:0.34.3",
    # "frpc:0.34.3",
    # "common-scripts:alpine-3.17",
    # "ntp:latest",
    # "dns-server:11.1.1",
    # "portainer:agent-2.16.1",
    # "portainer:ce-2.16.1",
    # "self-signed-ssl:openssl-1.1.1",
    # "redis:6.0.16",
    # "redis:6.2.4",
    # "redis:3.0.504",
    # "keepalived:2.0.20",
    # "keepalived:2.0.20-docker",
    # "rabbitmq:3.11.10-management-windowsservercore-ltsc2022",
    # "rabbitmq:3.11.10-management-nanoserver-ltsc2022",
    # "rabbitmq:3.11.10-management",
    # "rabbitmq:3.8-management",
    # "rabbitmq:3.11.10-management-mqtt",
    # "android-template:uni-app-3.7.11.81746_20230428",
    # "gitlab-runner:v14.10.1",
    # "gitlab-runner:v15.11.1",
    # "gitlab-runner-helper:x86_64-v16.10.0-servercore21H2",
    # "clash:v1.16.0",
    # "yacd:v0.3.8",
    # "cp-zookeeper:7.3.2",
    # "cp-kafka:7.3.2",
    # "wait-for-it:default",
    # "minio:RELEASE.2024-04-06T05-26-02Z",
    # "minio:RELEASE.2022-02-12T00-51-25Z",
    # "minio:windows-latest",
    # "mongo:4.2.8-bionic",
    # "mongo:7.0.11",
    # "haproxy:2.2.28-alpine",
    # "mysql:8.1.0",
    # # ## 
    # "antlr4:4.12.0",
    # "antlr4:4.6",
    # "android:33.0.2",
    # "android:30.0.3",
    # "mssql:2019-latest",
    # "redis:3.0.5",
    # "dotnet:2.1-bionic",
    # "aspnet:2.1-bionic",
    # "aspnet:2.1-bionic-fontconfig",
    # "puppeteer:23.11.1",
    ""
)


# 同步镜像，不需要重命名的
$syncSample = @(
    # "grafana/promtail:2.8.4",
    # "grafana/loki:2.8.4",
    # "grafana/grafana:9.5.2",
    # "google/cadvisor:v0.33.0",
    # "prom/alertmanager:v0.26.0",
    # "prom/prometheus:v2.47.0",
    # "flaviostutz/docker-swarm-node-exporter:1.1.1",
    # "duaneduan/wechat-webhook:v1",
    # "mysql:5.7.43",
    # "gitlab/gitlab-runner:v14.10.1",
    # "gcr.io/cadvisor/cadvisor:latest",
    ""
)

# 需要重命名的
$syncRenameDict = @{
    # "mcr.microsoft.com/windows/nanoserver:ltsc2022" = "windows-nanoserver:ltsc2022"
    # "mcr.microsoft.com/windows/servercore:ltsc2022" = "windows-servercore:ltsc2022",
    # "mcr.microsoft.com/dotnet/sdk:6.0" = "dotnet-sdk:6.0"
}
